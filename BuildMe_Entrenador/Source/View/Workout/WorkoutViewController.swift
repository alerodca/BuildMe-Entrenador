//
//  WorkoutViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import UIKit
import JGProgressHUD

class WorkoutViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var backView: UIView!
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var noResultsLabel: UILabel!
    
    // MARK: - Variables
    let viewmodel = WorkoutViewModel()
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
        viewmodel.filterDelegate = self
        
        backView.layer.cornerRadius = 15
        backView.layer.masksToBounds = true
    }
}

// MARK: - Extension UITableViewDelegate, UITableViewDataSource
extension WorkoutViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewmodel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PrincipalTableViewCell,
              let routine = viewmodel.getUser(at: indexPath.row) else { return UITableViewCell() }
        
        let nameAttributedString = NSMutableAttributedString(string: "Nombre: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        nameAttributedString.append(NSAttributedString(string: routine.name!))
        cell.titleOneLabel.attributedText = nameAttributedString
        
        let durationAttributedString = NSMutableAttributedString(string: "Duración: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        durationAttributedString.append(NSAttributedString(string: "\(routine.durationInWeeks!) semanas"))
        cell.titleSecondLabel.attributedText = durationAttributedString
        
        if let intensity = routine.intensity {
            let intensityString = String.removeOptional(from: intensity.rawValue)
            let intensityAttributedString = NSMutableAttributedString(string: "Intensidad: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
            intensityAttributedString.append(NSAttributedString(string: intensityString))
            cell.titleThirdLabel.attributedText = intensityAttributedString
        }
        
        cell.cellImageView.loadImage(from: routine.image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let routine = viewmodel.getUser(at: indexPath.row) else { return }
        let vc = DetailWeeklyTrainingViewController(routine: routine)
        let navController = UINavigationController(rootViewController: vc)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true)
    }
}

// MARK: - Extension UsersDelegate
extension WorkoutViewController: PrincipalTableDelegate, WorkoutFilterDelegate {

    func didFilterUsers(filteredAthletes: [Training]) {
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
extension WorkoutViewController: UISearchBarDelegate, UITextFieldDelegate {
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




/*private func strengthRoutine() {
 let rutina = StregthRoutine.rutinaFuerza.toDictionary()
 
 ref.child("\(Constants.routineChild)/\(Constants.strengthRoutine)").setValue(rutina) { (error, ref) in
     if let error = error {
         print("Error al subir el objeto:", error.localizedDescription)
     } else {
         print("Objeto subido exitosamente a la base de datos")
     }
 }
}*/
