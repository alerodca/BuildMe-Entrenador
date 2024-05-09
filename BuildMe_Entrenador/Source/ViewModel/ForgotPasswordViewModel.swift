//
//  ForgotPasswordViewModel.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 8/5/24.
//

import Foundation
import Firebase

protocol ForgotPasswordProtocol {
    func navigateToLogin()
    func showAlert(title: String, message: String, isError: Bool)
}

class ForgotPasswordViewModel {
    // MARK: - Variables
    var delegate: ForgotPasswordProtocol?
    
    // MARK: - Funcs
    func navigateToLogin() {
        delegate?.navigateToLogin()
    }
    
    func sendEmail(email: String) {
        // Verificar si el usuario está registrado
        Auth.auth().fetchSignInMethods(forEmail: email) { signInMethods, error in
            if let error = error {
                self.delegate?.showAlert(title: "Error", message: "Error al verificar si el usuario está registrado", isError: true)
                return
            }
            
            if let signInMethods = signInMethods, signInMethods.isEmpty {
                self.delegate?.showAlert(title: "Error", message: "El usuario no está registrado en la aplicación.", isError: true)
            } else {
                Auth.auth().sendPasswordReset(withEmail: email) { error in
                    if let error = error {
                        self.delegate?.showAlert(title: "Error", message: "Error al enviar el correo electrónico de restablecimiento de contraseña: \(error.localizedDescription)", isError: true)
                    } else {
                        // Solo mostrar el mensaje de éxito si el correo electrónico se envió correctamente
                        self.delegate?.showAlert(title: "Éxito", message: "Se ha enviado un correo para restablecer la contraseña", isError: false)
                    }
                }
            }
        }
    }
}
