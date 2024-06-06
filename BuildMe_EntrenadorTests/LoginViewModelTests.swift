//
//  LoginViewModelTests.swift
//  BuildMe_EntrenadorTests
//
//  Created by Alejandro Rodríguez Cañete on 6/6/24.
//

import XCTest
@testable import BuildMe_Entrenador
import FirebaseDatabase
import FirebaseAuth

// Mock del delegado para verificar las llamadas
class MockLoginAuthControllerDelegate: LoginAuthControllerDelegate {
    var showAlertCalled = false
    var showAlertTitle: String?
    var showAlertMessage: String?
    var showAlertIsError: Bool?
    
    var navigateCalled = false
    var authCompleteCalled = false
    var showIndicatorCalled = false
    var hideIndicatorCalled = false
    var navigateToForgotPasswordCalled = false
    
    func showAlert(title: String, message: String, isError: Bool) {
        showAlertCalled = true
        showAlertTitle = title
        showAlertMessage = message
        showAlertIsError = isError
    }
    
    func navigate() {
        navigateCalled = true
    }
    
    func authComplete() {
        authCompleteCalled = true
    }
    
    func showIndicator() {
        showIndicatorCalled = true
    }
    
    func hideIndicator() {
        hideIndicatorCalled = true
    }
    
    func navigateToForgotPassword() {
        navigateToForgotPasswordCalled = true
    }
}

// Mock de Firebase Database
class MockDatabaseReference {
    var data: [String: Any] = [:]
    
    func observeSingleEvent(of eventType: DataEventType, with block: @escaping (DataSnapshot) -> Void) {
        let snapshot = MockDataSnapshot(value: data)
        block(snapshot)
    }
}

class MockDataSnapshot: DataSnapshot {
    private var mockValue: Any?
    
    init(value: Any?) {
        self.mockValue = value
    }
    
    override var value: Any? {
        return mockValue
    }
}

// Mock de Firebase Auth
class MockAuth {
    var signInResponse: (AuthDataResult?, Error?)?
    
    func signIn(withEmail email: String, password: String, completion: @escaping AuthDataResultCallback) {
        completion(signInResponse?.0, signInResponse?.1)
    }
}

class LoginViewModelTests: XCTestCase {
    
    var viewModel: LoginViewModel!
    var mockDelegate: MockLoginAuthControllerDelegate!
    var mockDatabaseReference: MockDatabaseReference!
    var mockAuth: MockAuth!
    
    override func setUp() {
        super.setUp()
        viewModel = LoginViewModel()
        mockDelegate = MockLoginAuthControllerDelegate()
        viewModel.delegate = mockDelegate
        
        // Setup Mocks
        mockDatabaseReference = MockDatabaseReference()
        mockAuth = MockAuth()
        
        // Swizzle Firebase methods
        Database.database().reference = { self.mockDatabaseReference }
        Auth.auth = { self.mockAuth }
    }
    
    override func tearDown() {
        viewModel = nil
        mockDelegate = nil
        mockDatabaseReference = nil
        mockAuth = nil
        super.tearDown()
    }
    
    func testLogin_withEmptyEmailAndPassword_showsError() {
        viewModel.login(email: "", password: "")
        
        XCTAssertTrue(mockDelegate.showIndicatorCalled)
        XCTAssertTrue(mockDelegate.hideIndicatorCalled)
        XCTAssertTrue(mockDelegate.showAlertCalled)
        XCTAssertEqual(mockDelegate.showAlertTitle, "Error")
        XCTAssertEqual(mockDelegate.showAlertMessage, "Por favor ingresa un email y una contraseña válidos")
        XCTAssertTrue(mockDelegate.showAlertIsError ?? false)
    }
    
    func testLogin_withValidTrainerCredentials_authenticatesSuccessfully() {
        // Mock Firebase Database response to indicate the user is a trainer
        mockDatabaseReference.data = ["someUserId": ["email": "trainer@example.com"]]
        
        // Mock Firebase Auth response for successful authentication
        mockAuth.signInResponse = (nil, nil)
        
        viewModel.login(email: "trainer@example.com", password: "password")
        
        XCTAssertTrue(mockDelegate.showIndicatorCalled)
        XCTAssertTrue(mockDelegate.hideIndicatorCalled)
        XCTAssertTrue(mockDelegate.authCompleteCalled)
    }
    
    func testLogin_withInvalidTrainerCredentials_showsError() {
        // Mock Firebase Database response to indicate the user is not a trainer
        mockDatabaseReference.data = [:]
        
        viewModel.login(email: "nontrainer@example.com", password: "password")
        
        XCTAssertTrue(mockDelegate.showIndicatorCalled)
        XCTAssertTrue(mockDelegate.hideIndicatorCalled)
        XCTAssertTrue(mockDelegate.showAlertCalled)
        XCTAssertEqual(mockDelegate.showAlertTitle, "Error")
        XCTAssertEqual(mockDelegate.showAlertMessage, "Para acceder a la app debe ser un Entrenador")
        XCTAssertTrue(mockDelegate.showAlertIsError ?? false)
    }
    
    func testForgotPassword_navigatesToForgotPassword() {
        viewModel.forgotPassword()
        
        XCTAssertTrue(mockDelegate.navigateToForgotPasswordCalled)
    }
    
    func testNavigateToSignUp_navigatesToSignUp() {
        viewModel.navigatoToSignUp()
        
        XCTAssertTrue(mockDelegate.navigateCalled)
    }
}

