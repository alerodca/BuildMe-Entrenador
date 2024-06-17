//
//  WorkoutViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import UIKit
import JGProgressHUD
import FirebaseDatabase

/**
 Este archivo WorkoutViewController.swift contiene una clase WorkoutViewController que controla la vista principal de la aplicación relacionada con las rutinas de entrenamiento. Aquí está una descripción básica de la clase y sus extensiones:

 Propósito: Gestionar la visualización y la interacción con la lista de rutinas de entrenamiento, permitiendo filtrarlas por nombre.

 Propiedades:
 - viewModel: Instancia de WorkoutViewModel para manejar la lógica de la vista.
 - hud: Instancia de JGProgressHUD para mostrar indicadores de actividad.
 
 Lifecycle Methods:
 - viewDidLoad(): Configura la vista inicial y sus subcomponentes.
 
 Métodos Privados:
 - initialConfigure(): Configura la apariencia inicial de la vista y establece los delegados.
 
 Extensiones:
 - UITableViewDelegate, UITableViewDataSource: Implementa métodos para manejar la tabla que muestra las rutinas de entrenamiento.
 - PrincipalTableDelegate, WorkoutFilterDelegate: Implementa métodos para manejar eventos relacionados con la obtención y filtrado de rutinas de entrenamiento.
 - UISearchBarDelegate, UITextFieldDelegate: Implementa métodos para manejar la interacción con la barra de búsqueda y el teclado.
 */

class WorkoutViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var viewTableView: UIView!
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var noResultsLabel: UILabel!
    
    // MARK: - Variables
    let viewmodel = WorkoutViewModel()
    let hud = JGProgressHUD()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //uploadTrainingToFirebase(training: ThirdRoutine.thirdRoutine)
        initialConfigure()
    }
    
    // MARK: - Actions & Selectors
    
    // MARK: - Functions
    
    // MARK: - Private Functions
    
    private func uploadTrainingToFirebase(training: Training) {
    // Referencia a la base de datos de Firebase
    let ref = Database.database().reference()
    
    // Convertir el objeto Training a un diccionario
    let trainingData = training.toDictionary()
    
    // Generar una nueva clave única para el objeto Training
    let newTrainingRef = ref.child(Constants.routineChild).child(Constants.fullBodyRoutine)
    
    // Subir el objeto Training al nodo "trainings" en Firebase Database
    newTrainingRef.setValue(trainingData) { error, _ in
        if let error = error {
            print("Error al subir el objeto Training a Firebase Database: \(error.localizedDescription)")
        } else {
            print("Objeto Training subido exitosamente a Firebase Database")
        }
    }
   }
    
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
extension WorkoutViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewmodel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PrincipalTableViewCell,
              let routine = viewmodel.getRoutine(at: indexPath.row) else { return UITableViewCell() }
        
        let nameAttributedString = NSMutableAttributedString(string: "Nombre: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        nameAttributedString.append(NSAttributedString(string: routine.name))
        cell.titleOneLabel.attributedText = nameAttributedString
        
        let levelAttributedString = NSMutableAttributedString(string: "Intensidad: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        levelAttributedString.append(NSAttributedString(string: routine.intensity.rawValue))
        cell.titleSecondLabel.attributedText = levelAttributedString
        
        let durationAttributedString = NSMutableAttributedString(string: "Duración: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 13)])
        durationAttributedString.append(NSAttributedString(string: "\(routine.durationInWeeks) semanas"))
        cell.titleThirdLabel.attributedText = durationAttributedString
        
        cell.cellImageView.loadImage(from: routine.image)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let workout = viewmodel.getRoutine(at: indexPath.row)
        if let workout = workout {
            let vc = RoutineDetailViewController(training: workout)
            let navController = UINavigationController(rootViewController: vc)
            navController.modalPresentationStyle = .fullScreen
            present(navController, animated: true)
        } else {
            viewmodel.delegate?.showAlert(title: "¡Error!", message: "Hubo un error al navegar a la rutina \(String(describing: workout?.name))", isError: true)
        }
    }
}

// MARK: - Extension UsersDelegate
extension WorkoutViewController: PrincipalTableDelegate, WorkoutFilterDelegate {
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
    
    func didFilterRoutines(filteredAthletes: [Training]) {
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
            self.hud.textLabel.text = "Trayendo Rutinas desde Firebase"
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
        viewmodel.filterRoutines(with: searchText)
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
