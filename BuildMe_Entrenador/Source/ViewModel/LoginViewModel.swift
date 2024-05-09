//
//  LoginViewModel.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import Foundation
import FirebaseAuth
import FirebaseDatabase

protocol LoginAuthControllerDelegate: AnyObject {
    func showAlert(title: String, message: String, isError: Bool)
    func navigate()
    func authComplete()
    func showIndicator()
    func hideIndicator()
    func navigateToForgotPassword()
}

class LoginViewModel {
    
    // MARK: - Variables
    weak var delegate: LoginAuthControllerDelegate?
    var errorMessage = ""
    
    // MARK: - Functions
    func login(email: String?, password: String?) {
        delegate?.showIndicator()
        guard let email = email, !email.isEmpty,
              let password = password, !password.isEmpty else {
            delegate?.hideIndicator()
            delegate?.showAlert(title: "Error", message: "Por favor ingresa un email y una contraseña válidos", isError: true)
            return
        }
        
        let databaseRef = Database.database().reference().child(Constants.trainerChild)
        databaseRef.observeSingleEvent(of: .value) { (snapshot) in
            guard snapshot.exists() else {
                self.delegate?.hideIndicator()
                self.delegate?.showAlert(title: "Error", message: "No se encontraron datos de usuarios en la base de datos", isError: true)
                return
            }
            var isUserRegistered = false
            for child in snapshot.children {
                if let childSnapshot = child as? DataSnapshot,
                   let userData = childSnapshot.value as? [String: Any],
                   let userEmail = userData["email"] as? String {
                    if userEmail == email {
                        isUserRegistered = true
                        break
                    }
                }
            }
            if isUserRegistered {
                Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                    if let error = error {
                        self.delegate?.hideIndicator()
                        self.showError(error: error as! AuthErrorCode)
                    } else {
                        // Autenticación exitosa
                        self.delegate?.authComplete()
                    }
                }
            } else {
                self.delegate?.hideIndicator()
                self.delegate?.showAlert(title: "Error", message: "Para acceder a la app debe ser un Entrenador", isError: true)
            }
        }
    }

    func forgotPassword() {
        delegate?.navigateToForgotPassword()
    }
    
    func navigatoToSignUp() {
        delegate?.navigate()
    }
    
    // MARK: - Private Funcs
    private func showError(error: AuthErrorCode) {
        switch error {
        case AuthErrorCode.invalidEmail:
            errorMessage = "Correo electrónico inválido."
        case AuthErrorCode.wrongPassword:
            errorMessage = "Contraseña incorrecta."
        case AuthErrorCode.userNotFound:
            errorMessage = "El usuario no está registrado."
        case AuthErrorCode.userDisabled:
            errorMessage = "El usuario ha sido inhabilitado."
        case AuthErrorCode.tooManyRequests:
            errorMessage = "Demasiados intentos. Inténtalo de nuevo más tarde."
        case AuthErrorCode.networkError:
            errorMessage = "Error de red. Por favor, verifica tu conexión a internet."
        case AuthErrorCode.operationNotAllowed:
            errorMessage = "Esta operación no está permitida."
        case AuthErrorCode.emailAlreadyInUse:
            errorMessage = "El correo electrónico ya está en uso."
        case AuthErrorCode.weakPassword:
            errorMessage = "La contraseña es demasiado débil."
        default:
            errorMessage = "Se ha producido un error inesperado. Por favor, inténtalo de nuevo más tarde."
        }
        delegate?.showAlert(title: "Error", message: errorMessage, isError: true)
    }
}
