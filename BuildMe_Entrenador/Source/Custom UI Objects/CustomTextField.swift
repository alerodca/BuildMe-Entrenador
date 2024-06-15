//
//  CustomTextField.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 8/5/24.
//

import UIKit

/// Un `UITextField` personalizado con funcionalidades adicionales como un subrayado y una imagen a la izquierda.
class CustomTextField: UITextField {

    /// El espacio de relleno alrededor del texto del campo de texto.
    let padding: CGFloat = 35
    
    /// Inicializador requerido para inicializar desde un storyboard o un nib.
    ///
    /// - Parameter coder: Un decodificador que ayuda a desarchivar y codificar datos.
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Setup
    
    /// Configura el campo de texto con un subrayado.
    ///
    /// Este método añade una capa en la parte inferior del campo de texto para que actúe como un subrayado.
    func setupUnderLineTextField() {
        let bottomLayer = CALayer()
        bottomLayer.frame = CGRect(x: 0, y: self.frame.height, width: self.frame.width - 35, height: 1)
        bottomLayer.backgroundColor = UIColor.white.cgColor
        self.layer.addSublayer(bottomLayer)
    }
    
    /// Configura una imagen en el lado izquierdo del campo de texto.
    ///
    /// - Parameter image: La imagen que se mostrará en el lado izquierdo del campo de texto.
    func setupLeftImage(image: UIImage) {
        self.leftViewMode = .always
        let leftView = UIImageView(frame: CGRect(x: 0, y: self.frame.height / 2 - 10, width: 25, height: 20))
        leftView.tintColor = .white
        leftView.image = image
        self.addSubview(leftView)
    }

    /// Retorna el rectángulo para el texto del placeholder dentro de los límites del campo de texto.
    ///
    /// - Parameter bounds: Los límites rectangulares del campo de texto.
    /// - Returns: El rectángulo dentro del cual se dibuja el texto del placeholder.
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: self.padding, y: 0, width: bounds.width, height: bounds.height)
    }
    
    /// Retorna el rectángulo para el texto de edición dentro de los límites del campo de texto.
    ///
    /// - Parameter bounds: Los límites rectangulares del campo de texto.
    /// - Returns: El rectángulo dentro del cual se dibuja el texto de edición.
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: self.padding, y: 0, width: bounds.width, height: bounds.height)
    }
    
    /// Retorna el rectángulo para el texto dentro de los límites del campo de texto.
    ///
    /// - Parameter bounds: Los límites rectangulares del campo de texto.
    /// - Returns: El rectángulo dentro del cual se dibuja el texto.
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: self.padding, y: 0, width: bounds.width, height: bounds.height)
    }
}
