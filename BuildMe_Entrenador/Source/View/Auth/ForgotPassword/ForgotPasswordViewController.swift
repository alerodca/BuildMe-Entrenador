//
//  ForfogPasswordViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 8/5/24.
//

import UIKit
import JGProgressHUD

/**
 Vista de controlador para la pantalla de recuperación de contraseña.
 
 Esta clase maneja la lógica de la pantalla de recuperación de contraseña, incluyendo la validación de la dirección de correo electrónico y la navegación hacia la pantalla de inicio de sesión.
 */
class ForgotPasswordViewController: UIViewController {

    // MARK: - IBOutlets
    
    /**
     Campo de texto para ingresar la dirección de correo electrónico.
     */
    @IBOutlet var emailTextField: UITextField!
    
    /**
     Botón para recordar la contraseña.
     */
    @IBOutlet var rememberPasswordButton: UIButton!
    
    /**
     Botón para regresar a la pantalla de inicio de sesión.
     */
    @IBOutlet var loginButton: UIButton!
    
    
    // MARK: - Variables
    
    /**
     Instancia del view model para la recuperación de contraseña.
     */
    let viewmodel = ForgotPasswordViewModel()
    
    // MARK: - LifeCycle
    
    /**
     Inicializa la vista y configura los componentes.
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialConfigure()
    }

    // MARK: - Actions
    
    /**
     Acción para recordar la contraseña.
     
     - Parameter sender: Botón que activó la acción.
     */
    @IBAction func rememberPassword(_ sender: UIButton) {
        if let email = emailTextField.text, !email.isEmpty {
            viewmodel.sendEmail(email: email)
        } else {
            showAlert(title: "Error", message: "Debe proporcionar un correo válido", isError: true)
        }
    }
    
    /**
     Acción para regresar a la pantalla de inicio de sesión.
     
     - Parameter sender: Botón que activó la acción.
     */
    @IBAction func backToLogin(_ sender: UIButton) {
        viewmodel.navigateToLogin()
    }
    
    // MARK: - Private Funcs
    
    /**
     Configura la vista inicialmente.
     */
    private func initialConfigure() {
        view.applyBlueRedGradient()
        
        self.navigationItem.hidesBackButton = true
        
        emailTextField.delegate = self
        viewmodel.delegate = self
    }
}

// MARK: - Extension UITextFieldDelegate

/**
 Extensión para manejar los eventos de texto de la vista.
 */
extension ForgotPasswordViewController: UITextFieldDelegate {
    /**
     Se llama cuando se toca el botón de retorno en el teclado.
     
     - Parameter textField: Campo de texto que activó el evento.
     - Returns: Verdadero si se debe ocultar el teclado.
     */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Oculta el teclado
        textField.resignFirstResponder()
        return true
    }
    
    /**
     Se llama cuando se toca fuera de los campos de texto.
     
     - Parameter touches: Conjunto de toques en la pantalla.
     - Parameter event: Evento de toque.
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Oculta el teclado
        view.endEditing(true)
    }
}

// MARK: - Extension ForgotPasswordDelegate

/**
 Extensión para manejar los eventos de recuperación de contraseña.
 */
extension ForgotPasswordViewController: ForgotPasswordProtocol {
    /**
     Navega hacia la pantalla de inicio de sesión.
     */
    func navigateToLogin() {
        navigationController?.popViewController(animated: true)
    }
    
    /**
     Muestra un alerta con un mensaje y título.
     
     - Parameter title: Título del alerta.
     - Parameter message: Mensaje del alerta.
     - Parameter isError: Verdadero si el alerta es un error.
     */
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
