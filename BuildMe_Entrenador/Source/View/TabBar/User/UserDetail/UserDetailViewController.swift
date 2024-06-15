//
//  UserDetailViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 13/5/24.
//

import UIKit
import JGProgressHUD
import FirebaseDatabase

class UserDetailViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var backgroundView: UIView!
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var injuryHistoryTextView: UITextView!
    @IBOutlet var clinicHistoryTextView: UITextView!
    @IBOutlet var dietAssignedTextView: UITextView!
    @IBOutlet var routineAssignedTextView: UITextView!
    @IBOutlet var personalDataTextView: UITextView!
    @IBOutlet var assignedRoutineButton: UIButton!
    @IBOutlet var asignedDietButton: UIButton!
    
    // MARK: - Variables
    let athlete: Athlete
    let database = Database.database().reference()
    
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
        
        if let routine = athlete.routine {
            assignedRoutineButton.setTitle("Eliminar Rutina", for: .normal)
        } else {
            assignedRoutineButton.setTitle("Asignar Rutina", for: .normal)
        }
        
        // Verificar si hay dieta asignada
        if let diet = athlete.diet {
            asignedDietButton.setTitle("Eliminar Dieta", for: .normal)
        } else {
            asignedDietButton.setTitle("Asignar Dieta", for: .normal)
        }
    }
    
    // MARK: - Actions & Selectors
    @objc func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func showCompleted() {
        let vc = InfoTaskViewController(uid: athlete.uid)
        let navController = UINavigationController(rootViewController: vc)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true)
    }
    
    @IBAction func assignedRoutine(_ sender: UIButton) {
        if let routine = athlete.routine {
            // Eliminar rutina asignada
            athlete.routine = nil
            saveAthleteData()
            assignedRoutineButton.setTitle("Asignar Rutina", for: .normal)
            updateAssignedTextView(assignedTextView: routineAssignedTextView, text: "", isRoutine: true)
            showJProgressHUD(title: "Rutina Eliminada", message: "Se ha eliminado la rutina que tenía asignada", isError: false)
        } else {
            // Asignar rutina
            fetchDataAndShowAlert(for: Constants.routineChild, isRoutine: true)
            assignedRoutineButton.setTitle("Eliminar Rutina", for: .normal)
        }
    }

    @IBAction func assignedDiet(_ sender: UIButton) {
        if let diet = athlete.diet {
            // Eliminar dieta asignada
            athlete.diet = nil
            saveAthleteData()
            asignedDietButton.setTitle("Asignar Dieta", for: .normal)
            updateAssignedTextView(assignedTextView: dietAssignedTextView, text: "", isRoutine: false)
            showJProgressHUD(title: "Dieta Eliminada", message: "Se ha eliminado la dieta que tenía asignada", isError: false)
        } else {
            // Asignar dieta
            fetchDataAndShowAlert(for: Constants.dietChild, isRoutine: false)
            asignedDietButton.setTitle("Eliminar Dieta", for: .normal)
        }
    }
    
    // MARK: - Private Funcs
    private func showJProgressHUD(title: String, message: String, isError: Bool) {
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
    
    private func fetchDataAndShowAlert(for node: String, isRoutine: Bool) {
        database.child(node).observeSingleEvent(of: .value) { snapshot in
            var options: [Any] = []
            for child in snapshot.children {
                if let childSnapshot = child as? DataSnapshot,
                   let dict = childSnapshot.value as? [String: Any] {
                    do {
                        if isRoutine {
                            let jsonData = try JSONSerialization.data(withJSONObject: dict)
                            let training = try JSONDecoder().decode(Training.self, from: jsonData)
                            options.append(training)
                        } else {
                            let jsonData = try JSONSerialization.data(withJSONObject: dict)
                            let diet = try JSONDecoder().decode(Diet.self, from: jsonData)
                            options.append(diet)
                        }
                    } catch {
                        print("Error decoding data: \(error)")
                    }
                }
            }
            self.showAlert(with: node, options: options, isRoutine: isRoutine)
        } withCancel: { error in
            print(error.localizedDescription)
        }
    }
    
    private func showAlert(with title: String, options: [Any], isRoutine: Bool) {
        let alertController = UIAlertController(title: title, message: "Selecciona una opción", preferredStyle: .alert)
        for option in options {
            if let option = option as? Diet {
                let action = UIAlertAction(title: option.name, style: .default) { _ in
                    self.assignDiet(option)
                }
                alertController.addAction(action)
            } else if let option = option as? Training {
                let action = UIAlertAction(title: option.name, style: .default) { _ in
                    self.assignTraining(option)
                }
                alertController.addAction(action)
            }
        }
        alertController.addAction(UIAlertAction(title: "Cancelar", style: .cancel) { _ in
            if isRoutine {
                self.assignedRoutineButton.setTitle("Asignar Rutina", for: .normal)
            } else {
                self.asignedDietButton.setTitle("Asignar Dieta", for: .normal)
            }
        })
        present(alertController, animated: true)
    }

    private func assignDiet(_ diet: Diet) {
        athlete.diet = diet
        saveAthleteData()
        showJProgressHUD(title: "Dieta Asignada", message: "Se le ha asignado una nueva dieta", isError: false)
        updateAssignedTextView(assignedTextView: dietAssignedTextView, text: diet.name, isRoutine: false)
    }

    private func assignTraining(_ training: Training) {
        athlete.routine = training
        saveAthleteData()
        showJProgressHUD(title: "Rutina Asignada", message: "Se le ha asignado una nueva rutina", isError: false)
        updateAssignedTextView(assignedTextView: routineAssignedTextView, text: training.name, isRoutine: true)
    }

    private func updateAssignedTextView(assignedTextView: UITextView, text: String, isRoutine: Bool) {
        let boldAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 15)
        ]
        let normalAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 15)
        ]
        
        let attributedString = NSMutableAttributedString(string: isRoutine ? "Rutina Asignada: " : "Dieta Asignada: ", attributes: boldAttributes)
        if text.isEmpty {
            attributedString.append(NSAttributedString(string: "Sin \(isRoutine ? "rutina" : "dieta") asignada", attributes: normalAttributes))
        } else {
            attributedString.append(NSAttributedString(string: text, attributes: normalAttributes))
        }
        assignedTextView.attributedText = attributedString
    }

    private func saveAthleteData() {
        database.child(Constants.athleteChild).child(athlete.uid).setValue(athlete.toDictionary())
    }

    private func initialConfigure() {
        view.applyBlueRedGradient()
        
        // Configure back button
        let backImage = UIImage(systemName: "arrow.backward")
        let backButton = UIBarButtonItem(image: backImage, style: .plain, target: self, action: #selector(dismissSelf))
        backButton.tintColor = .white
        backButton.setTitleTextAttributes(
            [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white],
            for: .normal)
        navigationItem.leftBarButtonItem = backButton
        
        // Configure checkmark button
        let rightBackImage = UIImage(systemName: "checkmark.circle")
        let checkmarkButton = UIBarButtonItem(image: rightBackImage, style: .plain, target: self, action: #selector(showCompleted))
        checkmarkButton.tintColor = .white
        checkmarkButton.setTitleTextAttributes(
            [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white],
            for: .normal)
        navigationItem.rightBarButtonItem = checkmarkButton
        
        backgroundView.layer.cornerRadius = 15
        backgroundView.layer.masksToBounds = true
        
        profileImageView.loadImage(from: athlete.profileImageView)
        profileImageView.layer.cornerRadius = 8.0
        profileImageView.clipsToBounds = true
        
        let boldAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 15)
        ]
        
        let normalAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 15)
        ]
        
        // Configure injury history text view
        let attributedString = NSMutableAttributedString(string: "Historial de Lesiones: ", attributes: boldAttributes)
        attributedString.append(NSAttributedString(string: athlete.injuriesHistory, attributes: normalAttributes))
        injuryHistoryTextView.attributedText = attributedString
        injuryHistoryTextView.isEditable = false
        injuryHistoryTextView.isScrollEnabled = true
        
        // Configure clinic history text view
        let attributedStringCH = NSMutableAttributedString(string: "Historial Clínico: ", attributes: boldAttributes)
        attributedStringCH.append(NSAttributedString(string: athlete.clinicHistory, attributes: normalAttributes))
        clinicHistoryTextView.attributedText = attributedStringCH
        clinicHistoryTextView.isEditable = false
        clinicHistoryTextView.isScrollEnabled = true
        
        // Configure diet assigned text view
        let attributedStringDA = NSMutableAttributedString(string: "Dieta Asignada: ", attributes: boldAttributes)
        if let diet = athlete.diet {
            attributedStringDA.append(NSAttributedString(string: diet.name, attributes: normalAttributes))
        } else {
            attributedStringDA.append(NSAttributedString(string: "Sin dieta asignada", attributes: normalAttributes))
        }
        dietAssignedTextView.attributedText = attributedStringDA
        dietAssignedTextView.isEditable = false
        dietAssignedTextView.isScrollEnabled = true
        
        // Configure routine assigned text view
        let attributedStringRA = NSMutableAttributedString(string: "Rutina Asignada: ", attributes: boldAttributes)
        if let routine = athlete.routine {
            attributedStringRA.append(NSAttributedString(string: routine.name, attributes: normalAttributes))
        } else {
            attributedStringRA.append(NSAttributedString(string: "Sin rutina asignada", attributes: normalAttributes))
        }
        routineAssignedTextView.attributedText = attributedStringRA
        routineAssignedTextView.isEditable = false
        routineAssignedTextView.isScrollEnabled = true
        
        // Configure personal data text view
        personalDataTextView.layer.borderWidth = 1.0
        personalDataTextView.layer.borderColor = UIColor.black.cgColor
        personalDataTextView.layer.cornerRadius = 8.0
        personalDataTextView.clipsToBounds = true
        let titleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 15),
            .paragraphStyle: NSMutableParagraphStyle().centered()
        ]
        let titleString = NSAttributedString(string: "Datos Personales\n", attributes: titleAttributes)
        
        let attributedStringPD = NSMutableAttributedString()
        attributedStringPD.append(titleString)
        attributedStringPD.append(NSAttributedString(string: "\nNombre: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.name)\n\n", attributes: normalAttributes))
        attributedStringPD.append(NSAttributedString(string: "Género: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.gender)\n\n", attributes: normalAttributes))
        attributedStringPD.append(NSAttributedString(string: "Email: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.email)\n\n", attributes: normalAttributes))
        attributedStringPD.append(NSAttributedString(string: "Nombre de Usuario: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.username)\n\n", attributes: normalAttributes))
        attributedStringPD.append(NSAttributedString(string: "Número de Teléfono: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(String.removeOptional(from: athlete.phone))\n\n", attributes: normalAttributes))
        attributedStringPD.append(NSAttributedString(string: "Fecha de Nacimiento: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.dateBirth)\n\n", attributes: normalAttributes))
        attributedStringPD.append(NSAttributedString(string: "Datos de Entrenamiento\n", attributes: titleAttributes))
        attributedStringPD.append(NSAttributedString(string: "\nCondición Física: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.physicCondition)\n\n", attributes: normalAttributes))
        attributedStringPD.append(NSAttributedString(string: "Objetivos buscados: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.trainingGoal)\n\n", attributes: normalAttributes))
        attributedStringPD.append(NSAttributedString(string: "Sitio de Entrenamiento: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.location)\n\n", attributes: normalAttributes))
        attributedStringPD.append(NSAttributedString(string: "Turno: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.availableTime)\n\n", attributes: normalAttributes))
        personalDataTextView.attributedText = attributedStringPD
        personalDataTextView.isEditable = false
        personalDataTextView.isScrollEnabled = true
    }
}
