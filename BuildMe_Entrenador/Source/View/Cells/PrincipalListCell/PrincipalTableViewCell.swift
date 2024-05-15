//
//  PrincipalTableViewCell.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import UIKit

class PrincipalTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet var cellImageView: UIImageView!
    @IBOutlet var titleOneLabel: UILabel!
    @IBOutlet var titleSecondLabel: UILabel!
    @IBOutlet var titleThirdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellImageView.layer.cornerRadius = 10
        cellImageView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
