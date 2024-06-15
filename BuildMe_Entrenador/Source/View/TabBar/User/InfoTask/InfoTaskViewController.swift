//
//  InfoTaskViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 3/6/24.
//

import UIKit

/**
 La clase InfoTaskViewController que es un controlador de vista en una aplicación iOS. Aquí está un resumen de su estructura y funcionalidades:

 Propósito: Gestiona la visualización de tareas completadas por un usuario.
 Herencia: Hereda de UIViewController.
 IBOutlets:
    - backView: Vista de fondo en la interfaz de usuario.
    - tableView: UITableView para mostrar las tareas completadas.
 Variables:
    - viewModel: Una instancia de InfoTaskViewModel para manejar la lógica de la vista.
    - uid: El identificador único del usuario del que se están mostrando las tareas completadas.
    - emptyTasksLabel: Una etiqueta que se muestra cuando no hay tareas completadas para mostrar.
 Lifecycle:
    - viewDidLoad(): Configura la vista cuando se carga por primera vez, inicializando el viewModel y configurando la interfaz de usuario.
 Inicializadores:
    - init(uid:): Inicializa la clase con un identificador único de usuario.
 Funciones privadas:
    - initialConfigure(): Configura la apariencia inicial de la vista, incluyendo el fondo, la tabla y la etiqueta de tareas vacías.
    -  configureViewModel(): Configura el viewModel y maneja el reloadDataHandler para actualizar la tabla cuando cambian los datos.
 Actions & Selectors:
    - dismissSelf(): Método llamado al tocar el botón de retroceso para cerrar la vista.
 Extensiones:
    - extension InfoTaskViewController: UITableViewDataSource, UITableViewDelegate: Implementa los métodos necesarios para la tabla, como el número de filas, la               configuración de las celdas y el manejo de la selección de celdas.
 */

class InfoTaskViewController: UIViewController {
    
    @IBOutlet var backView: UIView!
    @IBOutlet var tableView: UITableView!
    private var viewModel: InfoTaskViewModel
    private let uid: String
    private let emptyTasksLabel: UILabel = {
        let label = UILabel()
        label.text = "Todavía no tiene ninguna tarea completada"
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont.boldSystemFont(ofSize: 23)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialConfigure()
        configureViewModel()
        viewModel.fetchData()
    }
    
    init(uid:String) {
        self.uid = uid
        viewModel = InfoTaskViewModel(uid: uid)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialConfigure() {
        view.applyBlueRedGradient()
        
        backView.layer.cornerRadius = 15
        backView.layer.masksToBounds = true
        
        let backImage = UIImage(systemName: "arrow.backward")
        let backButton = UIBarButtonItem(image: backImage, style: .plain, target: self, action: #selector(dismissSelf))
        backButton.tintColor = .white
        backButton.setTitleTextAttributes(
            [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white],
            for: .normal)
        navigationItem.leftBarButtonItem = backButton
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomCell")
        
        view.addSubview(emptyTasksLabel)
        NSLayoutConstraint.activate([
            emptyTasksLabel.centerXAnchor.constraint(equalTo: backView.centerXAnchor),
            emptyTasksLabel.centerYAnchor.constraint(equalTo: backView.centerYAnchor)
        ])
        emptyTasksLabel.leadingAnchor.constraint(greaterThanOrEqualTo: backView.leadingAnchor, constant: 16).isActive = true
        emptyTasksLabel.trailingAnchor.constraint(lessThanOrEqualTo: backView.trailingAnchor, constant: -16).isActive = true
        
        emptyTasksLabel.isHidden = true
    }
    
    private func configureViewModel() {
        viewModel.reloadDataHandler = { [weak self] in
            self?.tableView.reloadData()
            self?.emptyTasksLabel.isHidden = !(self?.viewModel.tasks.isEmpty ?? true)
        }

    }
    
    @objc func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
}

extension InfoTaskViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        
        let task = viewModel.tasks[indexPath.row]
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        cell.titleLabel.text = "Fecha: \(dateFormatter.string(from: task.date))"
        cell.subtitleLabel.text = "Observaciones: \(task.observations)"
        cell.subtitleLabel.lineBreakMode = .byWordWrapping
        cell.subtitleLabel.numberOfLines = 0
        
        switch task.typeTask {
        case .diet:
            if let image = UIImage(systemName: "fork.knife.circle") {
                let tintedImage = image.withTintColor(.lightGray, renderingMode: .alwaysOriginal)
                    .withRenderingMode(.alwaysOriginal)
                    .withConfiguration(UIImage.SymbolConfiguration(pointSize: 32))
                cell.customImageView.image = tintedImage
            }
        case .workout:
            if let workout = UIImage(systemName: "figure.walk.circle") {
                let tintedImage = workout.withTintColor(.lightGray, renderingMode: .alwaysOriginal)
                    .withRenderingMode(.alwaysOriginal)
                    .withConfiguration(UIImage.SymbolConfiguration(pointSize: 32))
                cell.customImageView.image = tintedImage
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let task = viewModel.tasks[indexPath.row]
        let popupVC = PopupViewController(completedTask: task)
        popupVC.modalPresentationStyle = .overFullScreen
        present(popupVC, animated: true, completion: nil)
    }
}
