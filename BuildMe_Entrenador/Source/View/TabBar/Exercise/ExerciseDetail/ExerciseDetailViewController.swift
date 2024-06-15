//
//  ExerciseDetailViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 21/5/24.
//

import UIKit

class ExerciseDetailViewController: UIViewController {

    // MARK: - IBOUtlets
    @IBOutlet var backView: UIView!
    @IBOutlet var exerciseNameLabel: UILabel!
    @IBOutlet var exerciseImageView: UIImageView!
    @IBOutlet var descriptionExerciseTextView: UITextView!
    @IBOutlet var muscleLabel: UILabel!
    @IBOutlet var setsLabel: UILabel!
    @IBOutlet var repsLabel: UILabel!
    
    // MARK: - Variables
    let exercise: Exercise
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialConfigure()
    }
    
    // MARK: - Constructor
    init(exercise: Exercise) {
        self.exercise = exercise
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Actions & Selectors
    @objc func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Functions
    
    // MARK: - Private Functions
    private func initialConfigure() {
        view.applyBlueRedGradient()
        
        let backImage = UIImage(systemName: "arrow.backward")
        let backButton = UIBarButtonItem(image: backImage, style: .plain, target: self, action: #selector(dismissSelf))
        backButton.tintColor = .white
        backButton.setTitleTextAttributes(
            [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white],
            for: .normal)
        navigationItem.leftBarButtonItem = backButton
        
        backView.layer.cornerRadius = 15
        backView.layer.masksToBounds = true
        
        exerciseNameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        exerciseNameLabel.text = exercise.name
        
        exerciseImageView.contentMode = .scaleAspectFit
        exerciseImageView.loadImage(from: exercise.image)
        exerciseImageView.layer.cornerRadius = 15
        exerciseImageView.layer.masksToBounds = true
        
        descriptionExerciseTextView.font = UIFont.boldSystemFont(ofSize: 16)
        descriptionExerciseTextView.text = exercise.description
        descriptionExerciseTextView.isEditable = false
        descriptionExerciseTextView.layer.cornerRadius = 10
        
        muscleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        muscleLabel.text = "Músculo trabajado: \(exercise.muscleGroup.rawValue)"
        
        setsLabel.font = UIFont.boldSystemFont(ofSize: 16)
        setsLabel.text = "Series: \(exercise.sets)"
        
        repsLabel.font = UIFont.boldSystemFont(ofSize: 16)
        repsLabel.text = "Repeticiones: \(exercise.reps)"
    }
}
