//
//  UsersViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import UIKit
import JGProgressHUD

class UsersViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    @IBOutlet var tableView: UITableView!
    
    // MARK: - Variables
    let viewmodel = UsersViewModel()
    let hud = JGProgressHUD()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialConfigure()
    }

    // MARK: - Actions
    
    // MARK: - Functions
    
    // MARK: - Private Functions
    private func initialConfigure() {
        view.applyBlueRedGradient()
        
        viewmodel.delegate = self
        viewmodel.getUsers()
    }
}

extension UsersViewController: UsersDelegate {
    func showActivityIndicator() {
        DispatchQueue.main.async {
            self.hud.textLabel.text = "Trayendo Users desde Firebase"
            self.hud.detailTextLabel.text = "Espere por favor"
            self.hud.show(in: self.view)
        }
    }
    
    func hideActivityIndicator() {
        DispatchQueue.main.async {
            self.hud.dismiss(animated: true)
        }
    }
    
    
}
