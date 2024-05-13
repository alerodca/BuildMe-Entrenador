//
//  UserDetailViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 13/5/24.
//

import UIKit

class UserDetailViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var backgroundView: UIView!
    @IBOutlet var profileImageView: UIImageView!
    
    // MARK: - Variables
    let athlete: Athlete
    
    // MARK: - Constructor
    init(athlete: Athlete) {
        self.athlete = athlete
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialConfigure()
    }
    
    // MARK: - Actions & Selectors
   
    @objc func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Private Funcs
    private func initialConfigure() {
        view.applyBlueRedGradient()
        
        let backButton = UIBarButtonItem(title: "Atrás", style: .plain, target: self, action: #selector(dismissSelf))
        backButton.setTitleTextAttributes(
            [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white],
            for: .normal)
        navigationItem.leftBarButtonItem = backButton
        
        backgroundView.layer.cornerRadius = 10
        backgroundView.layer.masksToBounds = true
        
    }
}
