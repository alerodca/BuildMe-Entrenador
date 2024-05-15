//
//  UserDetailViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 13/5/24.
//

import UIKit

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
    
    // MARK: - Private Funcs
    private func initialConfigure() {
        view.applyBlueRedGradient()
        
        let backButton = UIBarButtonItem(title: "Atrás", style: .plain, target: self, action: #selector(dismissSelf))
        backButton.setTitleTextAttributes(
            [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white],
            for: .normal)
        navigationItem.leftBarButtonItem = backButton
        
        backgroundView.layer.cornerRadius = 15
        backgroundView.layer.masksToBounds = true
        
        profileImageView.loadImage(from: athlete.profileImageView)
        
        let boldAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 15)
        ]
        let attributedString = NSMutableAttributedString(string: "Historial de Lesiones: ", attributes: boldAttributes)
        attributedString.append(NSAttributedString(string: athlete.injuriesHistory))
        injuryHistoryTextView.attributedText = attributedString
        injuryHistoryTextView.isEditable = false
        injuryHistoryTextView.isScrollEnabled = true
        
        let attributedStringCH = NSMutableAttributedString(string: "Historial Clínico: ", attributes: boldAttributes)
        attributedStringCH.append(NSAttributedString(string: athlete.clinicHistory))
        clinicHistoryTextView.attributedText = attributedStringCH
        clinicHistoryTextView.isEditable = false
        clinicHistoryTextView.isScrollEnabled = true
        
        let attributedStringDA = NSMutableAttributedString(string: "Dieta Asignada: ", attributes: boldAttributes)
        // Para cuando asigne dietas
        attributedStringDA.append(NSAttributedString(string: "Este es un ejemplo de una dieta random."))
        dietAssignedTextView.attributedText = attributedStringDA
        dietAssignedTextView.isEditable = false
        dietAssignedTextView.isScrollEnabled = true
        
        let attributedStringRA = NSMutableAttributedString(string: "Rutina Asignada: ", attributes: boldAttributes)
        // Para cuando asigne rutinas
        attributedStringRA.append(NSAttributedString(string: "Este es un ejemplo de una rutina random."))
        routineAssignedTextView.attributedText = attributedStringRA
        routineAssignedTextView.isEditable = false
        routineAssignedTextView.isScrollEnabled = true
        
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
