//
//  UsersTableViewCell.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 9/5/24.
//

import UIKit

class UsersTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet var imageViewCell: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageViewCell.layer.cornerRadius = 10
        imageViewCell.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
