//
//  Extension+Textfield.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import UIKit

extension UITextField {
    func setupLeftSideImage(systemImageNamed: String) {
        let imageView = UIImageView(frame: CGRect(x: 15, y: 8, width: 25, height: 25))
        imageView.image = UIImage(systemName: systemImageNamed)
        imageView.tintColor = .black
        let imageViewContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
        imageViewContainerView.addSubview(imageView)
        leftView = imageViewContainerView
        leftViewMode = .always
    }
}
