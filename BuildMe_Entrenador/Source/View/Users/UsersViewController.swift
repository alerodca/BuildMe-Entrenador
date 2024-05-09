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
    @IBOutlet var viewTableView: UIView!
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
        tableView.register(UINib(nibName: "UsersTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        searchTextField.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
        
        viewTableView.layer.cornerRadius = 15
        viewTableView.layer.masksToBounds = true
    }
}

// MARK: - Extension UITableViewDelegate, UITableViewDataSource
extension UsersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewmodel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? UsersTableViewCell,
              let user = viewmodel.getUser(at: indexPath.row) else { return UITableViewCell() }
        
        let nameAttributedString = NSMutableAttributedString(string: "Nombre: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        nameAttributedString.append(NSAttributedString(string: user.name))
        cell.nameLabel.attributedText = nameAttributedString
        
        let emailAttributedString = NSMutableAttributedString(string: "Email: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        emailAttributedString.append(NSAttributedString(string: user.email))
        cell.emailLabel.attributedText = emailAttributedString
        

        cell.imageViewCell.loadImage(from: user.profileImageURL)
        
        return cell
    }

}

// MARK: - Extension UsersDelegate
extension UsersViewController: UsersDelegate {
    func didFetchUsers() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
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

extension UsersViewController: UITextFieldDelegate {
    
}
