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
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var viewTableView: UIView!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var noResultsLabel: UILabel!
    
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
        noResultsLabel.isHidden = true
        
        view.applyBlueRedGradient()
        
        viewmodel.delegate = self
        tableView.register(UINib(nibName: "PrincipalTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        
        searchBar.delegate = self
        searchBar.backgroundImage = UIImage()
        viewmodel.filterDelegate = self
        
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PrincipalTableViewCell,
              let user = viewmodel.getUser(at: indexPath.row) else { return UITableViewCell() }
        
        let nameAttributedString = NSMutableAttributedString(string: "Nombre: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        nameAttributedString.append(NSAttributedString(string: user.name))
        cell.titleOneLabel.attributedText = nameAttributedString
        
        let emailAttributedString = NSMutableAttributedString(string: "Email: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        emailAttributedString.append(NSAttributedString(string: user.email))
        cell.titleSecondLabel.attributedText = emailAttributedString
        
        let usernameAttributedString = NSMutableAttributedString(string: "Usuario: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        usernameAttributedString.append(NSAttributedString(string: user.username))
        cell.titleThirdLabel.attributedText = usernameAttributedString
        
        cell.cellImageView.loadImage(from: user.profileImageView)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let user = viewmodel.getUser(at: indexPath.row) {
            let vc = UserDetailViewController(athlete: user)
            let navController = UINavigationController(rootViewController: vc)
            navController.modalPresentationStyle = .fullScreen
            present(navController, animated: true)
        } else {
            viewmodel.delegate?.showAlert(title: "¡Error!", message: "Hubo un error al navegar al detalle del usuario", isError: true)
        }
    }
}

// MARK: - Extension UsersDelegate
extension UsersViewController: PrincipalTableDelegate, UsersFilterDelegate {
    func showAlert(title: String, message: String, isError: Bool) {
        DispatchQueue.main.async {
            let hud = JGProgressHUD()
            hud.indicatorView = isError ? JGProgressHUDErrorIndicatorView() :
            JGProgressHUDSuccessIndicatorView()
            hud.textLabel.text = title
            hud.detailTextLabel.text = message
            hud.interactionType = .blockAllTouches
            hud.show(in: self.view)
            hud.dismiss(afterDelay: 3, animated: true)
        }
    }
    
    func didFilterUsers(filteredAthletes: [Athlete]) {
        if filteredAthletes.isEmpty {
            noResultsLabel.isHidden = false
        } else {
            noResultsLabel.isHidden = true
        }
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
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

// MARK: - Extension UISearchBarDelegate
extension UsersViewController: UISearchBarDelegate, UITextFieldDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewmodel.filterUsers(with: searchText)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Oculta el teclado
        textField.resignFirstResponder()
        return true
    }
    
    // Este método se llama cuando se toca fuera de los text fields
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Oculta el teclado
        view.endEditing(true)
    }
}

