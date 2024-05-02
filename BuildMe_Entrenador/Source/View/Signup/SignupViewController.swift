//
//  SignupViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import UIKit
import JGProgressHUD

class SignupViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var selectImageButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: - Variables
    let hud = JGProgressHUD()
    let viewmodel = SignupViewModel()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialConfigure()
    }
    
    // MARK: - Functions
    private func initialConfigure() {
        view.applyBlueRedGradient()
        
        nameTextField.delegate = self
        usernameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        nameTextField.setupLeftSideImage(systemImageNamed: "person")
        usernameTextField.setupLeftSideImage(systemImageNamed: "person.crop.square")
        emailTextField.setupLeftSideImage(systemImageNamed: "envelope")
        passwordTextField.setupLeftSideImage(systemImageNamed: "lock")
        
        self.navigationItem.hidesBackButton = true
        viewmodel.delegate = self
        viewmodel.pickerDelegate = self
    }
    
    // MARK: - Actions
    @IBAction func selectPhoto(_ sender: UIButton) {
        viewmodel.selectImage()
    }
    @IBAction func createAccountWithEmailAndPassword(_ sender: UIButton) {
        viewmodel.createAccount(name: nameTextField.text, username: usernameTextField.text, email: emailTextField.text, password: passwordTextField.text)
    }
    @IBAction func navigateToLogin(_ sender: UIButton) {
        viewmodel.popToLogin()
    }
}

// MARK: - Extension UITextFieldDelegate
extension SignupViewController: UITextFieldDelegate {
    // Este método se llama cuando se toca el botón de retorno en el teclado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Oculta el teclado
        textField.resignFirstResponder()
        return true
    }
    // Este método se llama cuando se toca fuera de los text fields
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Oculta el teclado
        view.endEditing(true)
    }
}

extension SignupViewController: AuthControllerDelegate, ImagePickerDelegate {
    func showIndicator() {
        DispatchQueue.main.async {
            self.hud.textLabel.text = "Iniciando Sesión"
            self.hud.detailTextLabel.text = "Espere por favor"
            self.hud.show(in: self.view)
        }
    }
    
    func hideIndicator() {
        DispatchQueue.main.async {
            self.hud.dismiss(animated: true)
        }
    }
    
    func enableButtons() {
        selectImageButton.isEnabled = true
        loginButton.isEnabled = true
    }
    
    func disableButtons() {
        selectImageButton.isEnabled = false
        loginButton.isEnabled = false
    }
    
    func presentImagePicker() {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true)
    }
    
    func authComplete() {
        dismiss(animated: true)
    }
    
    func navigate() {
        navigationController?.popViewController(animated: true)
    }
    
    func showAlert(title: String, message: String, isError: Bool) {
        DispatchQueue.main.async {
            let hud = JGProgressHUD()
            hud.indicatorView = isError ? JGProgressHUDErrorIndicatorView() :
            JGProgressHUDSuccessIndicatorView()
            hud.textLabel.text = title
            hud.detailTextLabel.text = message
            hud.interactionType = .blockAllTouches
            hud.show(in: self.view)
            hud.dismiss(afterDelay: 3, animated: true)
        }
    }
}

extension SignupViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        if let image = info[.originalImage] as? UIImage {
            viewmodel.saveImage(image)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true) {
            self.showAlert(title: "Imagen", message: "Ninguna imagen seleccionada.", isError: false)
        }
    }
}
