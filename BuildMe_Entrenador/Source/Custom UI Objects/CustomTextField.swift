//
//  CustomTextField.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 8/5/24.
//

import UIKit

class CustomTextField: UITextField {

    let padding: CGFloat = 35
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Setup
    func setupUnderLineTextField() {
        let bottomLayer = CALayer()
        bottomLayer.frame = CGRect(x: 0, y: self.frame.height, width: self.frame.width - 35 , height: 1)
        bottomLayer.backgroundColor = UIColor.white.cgColor
        self.layer.addSublayer(bottomLayer)
    }
    
    func setupLeftImage(image: UIImage) {
        self.leftViewMode = .always
        let leftView = UIImageView(frame: CGRect(x: 0, y: self.frame.height / 2 - 10, width: 25, height: 20))
        leftView.tintColor = .white
        leftView.image = image
        self.addSubview(leftView)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        let bounds = CGRect(x: self.padding, y: 0, width: bounds.width, height: bounds.height)
        return bounds
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let bounds = CGRect(x: self.padding, y: 0, width: bounds.width, height: bounds.height)
        return bounds
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let bounds = CGRect(x: self.padding, y: 0, width: bounds.width, height: bounds.height)
        return bounds
    }
}
