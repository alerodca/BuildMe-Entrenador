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
    }
    
    // MARK: - Actions & Selectors
    @objc func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func showCompleted() {
        print("Mostrando días completados...")
    }
    
    @IBAction func assignedRoutine(_ sender: UIButton) {
        fetchDataAndShowAlert(for: Constants.routineChild, isRoutine: true)
    }
    
    @IBAction func assignedDiet(_ sender: UIButton) {
        fetchDataAndShowAlert(for: Constants.dietChild, isRoutine: false)
    }
    
    // MARK: - Private Funcs
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
        alertController.addAction(UIAlertAction(title: "Cancelar", style: .cancel))
        present(alertController, animated: true)
    }
    
    private func assignDiet(_ diet: Diet) {
        athlete.diet = diet
        saveAthleteData()
        let boldAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 15)
        ]
        let attributedStringDA = NSMutableAttributedString(string: "Dieta Asignada: ", attributes: boldAttributes)
        attributedStringDA.append(NSAttributedString(string: diet.name))
        dietAssignedTextView.attributedText = attributedStringDA
    }

    private func assignTraining(_ training: Training) {
        athlete.routine = training
        saveAthleteData()
        let boldAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 15)
        ]
        let attributedStringRA = NSMutableAttributedString(string: "Rutina Asignada: ", attributes: boldAttributes)
        attributedStringRA.append(NSAttributedString(string: training.name))
        routineAssignedTextView.attributedText = attributedStringRA
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

        // Configure injury history text view
        let attributedString = NSMutableAttributedString(string: "Historial de Lesiones: ", attributes: boldAttributes)
        attributedString.append(NSAttributedString(string: athlete.injuriesHistory))
        injuryHistoryTextView.attributedText = attributedString
        injuryHistoryTextView.isEditable = false
        injuryHistoryTextView.isScrollEnabled = true

        // Configure clinic history text view
        let attributedStringCH = NSMutableAttributedString(string: "Historial Clínico: ", attributes: boldAttributes)
        attributedStringCH.append(NSAttributedString(string: athlete.clinicHistory))
        clinicHistoryTextView.attributedText = attributedStringCH
        clinicHistoryTextView.isEditable = false
        clinicHistoryTextView.isScrollEnabled = true

        // Configure diet assigned text view
        let attributedStringDA = NSMutableAttributedString(string: "Dieta Asignada: ", attributes: boldAttributes)
        if let diet = athlete.diet {
            attributedStringDA.append(NSAttributedString(string: diet.name))
        } else {
            attributedStringDA.append(NSAttributedString(string: "Sin dieta asignada"))
        }
        dietAssignedTextView.attributedText = attributedStringDA
        dietAssignedTextView.isEditable = false
        dietAssignedTextView.isScrollEnabled = true

        // Configure routine assigned text view
        let attributedStringRA = NSMutableAttributedString(string: "Rutina Asignada: ", attributes: boldAttributes)
        if let routine = athlete.routine {
            attributedStringRA.append(NSAttributedString(string: routine.name))
        } else {
            attributedStringRA.append(NSAttributedString(string: "Sin rutina asignada"))
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
            .font: UIFont.boldSystemFont(ofSize: 18),
            .paragraphStyle: NSMutableParagraphStyle().centered()
        ]
        let titleString = NSAttributedString(string: "Datos Personales\n", attributes: titleAttributes)
        let boldAttributesPD: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 13)
        ]
        let attributedStringPD = NSMutableAttributedString()
        attributedStringPD.append(titleString)
        attributedStringPD.append(NSAttributedString(string: "\nNombre: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.name)\n\n"))
        attributedStringPD.append(NSAttributedString(string: "Género: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.gender)\n\n"))
        attributedStringPD.append(NSAttributedString(string: "Email: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.email)\n\n"))
        attributedStringPD.append(NSAttributedString(string: "Nombre de Usuario: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.username)\n\n"))
        attributedStringPD.append(NSAttributedString(string: "Número de Teléfono: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(String.removeOptional(from: athlete.phone))\n\n"))
        attributedStringPD.append(NSAttributedString(string: "Fecha de Nacimiento: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.dateBirth)\n\n"))
        attributedStringPD.append(NSAttributedString(string: "Datos de Entrenamiento\n", attributes: titleAttributes))
        attributedStringPD.append(NSAttributedString(string: "\nCondición Física: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.physicCondition)\n\n"))
        attributedStringPD.append(NSAttributedString(string: "Objetivos buscados: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.trainingGoal)\n\n"))
        attributedStringPD.append(NSAttributedString(string: "Sitio de Entrenamiento: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.location)\n\n"))
        attributedStringPD.append(NSAttributedString(string: "Turno: ", attributes: boldAttributes))
        attributedStringPD.append(NSAttributedString(string: "\(athlete.availableTime)\n\n"))
        personalDataTextView.attributedText = attributedStringPD
        personalDataTextView.isEditable = false
        personalDataTextView.isScrollEnabled = true
    }

}
