//
//  DietViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import UIKit
import JGProgressHUD

class DietViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var viewTableView: UIView!
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var noResultsLabel: UILabel!
    
    // MARK: - Variables
    let viewmodel = DietViewModel()
    let hud = JGProgressHUD()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        initialConfigure()
    }
    
    // MARK: - Actions & Selectors
    
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

extension DietViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewmodel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PrincipalTableViewCell,
              let diet = viewmodel.getDiet(at: indexPath.row) else { return UITableViewCell() }
        
        let nameAttributedString = NSMutableAttributedString(string: "Nombre: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        nameAttributedString.append(NSAttributedString(string: diet.name))
        cell.titleOneLabel.attributedText = nameAttributedString
        
        let noAttributedString = NSMutableAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        noAttributedString.append(NSAttributedString(string: ""))
        cell.titleSecondLabel.attributedText = noAttributedString
        
        let durationAttributedString = NSMutableAttributedString(string: "Duración: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        durationAttributedString.append(NSAttributedString(string: "\(diet.durationInWeeks) semanas"))
        cell.titleThirdLabel.attributedText = durationAttributedString
        
        cell.cellImageView.loadImage(from: diet.image)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let diet = viewmodel.getDiet(at: indexPath.row)
        if let diet = diet {
            let vc = DietDetailViewController(diet: diet)
            let navController = UINavigationController(rootViewController: vc)
            navController.modalPresentationStyle = .fullScreen
            present(navController, animated: true)
        } else {
            viewmodel.delegate?.showAlert(title: "¡Error!", message: "Hubo un error al navegar a la dieta \(String(describing: diet?.name))", isError: true)
        }
    }
}

// MARK: - Extension UsersDelegate
extension DietViewController: PrincipalTableDelegate, DietFilterDelegate {
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
    
    func didFilterDiet(filteredAthletes: [Diet]) {
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
            self.hud.textLabel.text = "Trayendo Dietas desde Firebase"
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
extension DietViewController: UISearchBarDelegate, UITextFieldDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewmodel.filterDiet(with: searchText)
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
