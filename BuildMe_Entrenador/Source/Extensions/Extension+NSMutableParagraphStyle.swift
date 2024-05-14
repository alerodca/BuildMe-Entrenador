//
//  Extension+NSMutableParagraphStyle.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 14/5/24.
//

import UIKit

extension NSMutableParagraphStyle {
    func centered() -> NSMutableParagraphStyle {
        let centeredStyle = NSMutableParagraphStyle()
        centeredStyle.alignment = .center
        return centeredStyle
    }
}
