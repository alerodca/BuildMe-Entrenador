//
//  PrincipalTableViewCell.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import UIKit

class PrincipalTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    
    /// La vista de imagen de la celda.
    @IBOutlet var cellImageView: UIImageView!
    
    /// La etiqueta para el primer título de la celda.
    @IBOutlet var titleOneLabel: UILabel!
    
    /// La etiqueta para el segundo título de la celda.
    @IBOutlet var titleSecondLabel: UILabel!
    
    /// La etiqueta para el tercer título de la celda.
    @IBOutlet var titleThirdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Configuración adicional después de cargar la celda desde el archivo xib o el storyboard.
        
        // Redondear las esquinas de la vista de imagen de la celda
        cellImageView.layer.cornerRadius = 10
        cellImageView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure la vista para la selección de la celda
    }
    
}

