//
//  DietViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import UIKit
import JGProgressHUD

class DietViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var backView: UIView!
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
        viewmodel.filterDelegate = self
        
        backView.layer.cornerRadius = 15
        backView.layer.masksToBounds = true
    }
}

// MARK: - Extension UITableViewDelegate, UITableViewDataSource
extension DietViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewmodel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PrincipalTableViewCell,
              let diet = viewmodel.getUser(at: indexPath.row) else { return UITableViewCell() }
        
        let nameAttributedString = NSMutableAttributedString(string: "Nombre: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        nameAttributedString.append(NSAttributedString(string: diet.name))
        cell.titleOneLabel.attributedText = nameAttributedString
        
        let durationAttributedString = NSMutableAttributedString(string: "Duración: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        durationAttributedString.append(NSAttributedString(string: "\(diet.numberOfDays) días"))
        cell.titleSecondLabel.attributedText = durationAttributedString
        
        let caloriesAttributedString = NSMutableAttributedString(string: "Total Calorías: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        caloriesAttributedString.append(NSAttributedString(string: "\(diet.totalCalories) calorías"))
        cell.titleThirdLabel.attributedText = caloriesAttributedString
        
        cell.cellImageView.loadImage(from: diet.photo)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        guard let user = viewmodel.getUser(at: indexPath.row) else { return }
//        let vc = UserDetailViewController(athlete: user)
//        let navController = UINavigationController(rootViewController: vc)
//        navController.modalPresentationStyle = .fullScreen
//        present(navController, animated: true)
//        print("Usuario seleccionado: \(user)")
        
        guard let diet = viewmodel.getUser(at: indexPath.row) else { return }
        print("Dieta Pulsada: \(diet.name)")
    }
}

// MARK: - Extension UsersDelegate
extension DietViewController: PrincipalTableDelegate, DietFilterDelegate {
    func didFilterUsers(filteredAthletes: [WeeklyMealPlan]) {
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
extension DietViewController: UISearchBarDelegate, UITextFieldDelegate {
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

/*
 private func mediterranianDiet() {
     let dietaMediterranea = WeeklyMealPlan(
         name: "Dieta Mediterránea",
         photo: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FdietaMediterranea.png?alt=media&token=81c6bded-b65d-47c9-a6c7-6f23c842a8f5",
         description: "La dieta mediterránea es un patrón alimenticio basado en los alimentos consumidos tradicionalmente por las poblaciones de países mediterráneos como España, Italia, Grecia y partes de Francia y el Medio Oriente. Se caracteriza por ser rica en alimentos frescos y naturales.",
         numberOfDays: 14,
         dailyMealPlans: [
             MediterranianDiet.lunes,
             MediterranianDiet.martes,
             MediterranianDiet.miercoles,
             MediterranianDiet.jueves,
             MediterranianDiet.viernes,
             MediterranianDiet.sabado,
             MediterranianDiet.domingo
         ],
         totalCalories: 2000,
         dietaryRestrictions: ["Ninguna"],
         allergies: ["Ninguna"])
     
     let object = dietaMediterranea.convertToDictionary()
     ref.child("\(Constants.dietChild)/\(Constants.mediterranianDietChild)").setValue(object) { (error, ref) in
         if let error = error {
             print("Error al subir el objeto:", error.localizedDescription)
         } else {
             print("Objeto subido exitosamente a la base de datos")
         }
     }
 }
 */
