//
//  DetailWeeklyTrainingViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import UIKit

class DetailWeeklyTrainingViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var backView: UIView!
    @IBOutlet var titleRoutineLabel: UILabel!
    @IBOutlet var detailRoutineTextView: UITextView!
    @IBOutlet var restDaysLabel: UILabel!
    @IBOutlet var observationsLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    
    // MARK: - Variables
    let routine: Training
    
    init(routine: Training) {
        self.routine = routine
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialConfigure()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - Actions & Selectors
    @objc func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Functions
    
    // MARK: - Private Functions
    private func initialConfigure() {
        view.applyBlueRedGradient()
        
        backView.layer.cornerRadius = 15
        backView.layer.masksToBounds = true
        
        let backButton = UIBarButtonItem(title: "Atrás", style: .plain, target: self, action: #selector(dismissSelf))
        backButton.setTitleTextAttributes(
            [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white],
            for: .normal)
        navigationItem.leftBarButtonItem = backButton
        
        titleRoutineLabel.text = routine.name
        
        detailRoutineTextView.layer.borderWidth = 1.0
        detailRoutineTextView.layer.borderColor = UIColor.black.cgColor
        detailRoutineTextView.layer.cornerRadius = 8.0
        detailRoutineTextView.clipsToBounds = true
        
        let titleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 18),
            .paragraphStyle: NSMutableParagraphStyle().centered()
        ]
        let titleString = NSAttributedString(string: "Detalles\n", attributes: titleAttributes)
        let boldAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 13)
        ]
        let detailText = NSMutableAttributedString()
        
        detailText.append(titleString)
        if let desc = routine.description {
            detailText.append(NSAttributedString(string: "\nDescripción: ", attributes: boldAttributes))
            detailText.append(NSAttributedString(string: "\(desc).\n\n"))
        }
        if let durationTraining = routine.duration {
            detailText.append(NSAttributedString(string: "Duración del Entreno: ", attributes: boldAttributes))
            detailText.append(NSAttributedString(string: "\(durationTraining).\n\n"))
        }
        detailText.append(NSAttributedString(string: "Duración del Plan: ", attributes: boldAttributes))
        detailText.append(NSAttributedString(string: "\(routine.durationInWeeks) semanas.\n\n"))
        if let intensity = routine.intensity {
            detailText.append(NSAttributedString(string: "Nivel: ", attributes: boldAttributes))
            detailText.append(NSAttributedString(string: "\(intensity).\n\n"))
        }
        if let material = routine.material {
            detailText.append(NSAttributedString(string: "Material: ", attributes: boldAttributes))
            detailText.append(NSAttributedString(string: "\(material).\n\n"))
        }
        if let audience = routine.targetAudience {
            detailText.append(NSAttributedString(string: "Orientado para: ", attributes: boldAttributes))
            detailText.append(NSAttributedString(string: "\(audience).\n\n"))
        }
        
        detailRoutineTextView.attributedText = detailText
        detailRoutineTextView.isEditable = false
        detailRoutineTextView.isScrollEnabled = true
        
        if let restDays = routine.weeklyTraining?.restDays {
            for (index, day) in restDays.enumerated() {
                if index < restDays.count - 1 {
                    restDaysLabel.text? += "\(day.rawValue), "
                } else {
                    restDaysLabel.text? += "\(day.rawValue)"
                }
            }
        } else {
            restDaysLabel.text = ""
        }
        
        if let notes = routine.weeklyTraining?.notes {
            observationsLabel.text = notes
        }
    }
}

extension DetailWeeklyTrainingViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let exercisesDays = routine.weeklyTraining?.trainingDays.count {
            return exercisesDays
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
