//
//  RoutineDetailViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 17/5/24.
//

import UIKit
import JGProgressHUD

class RoutineDetailViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var backView: UIView!
    @IBOutlet var routineImage: UIImageView!
    @IBOutlet var routineTextView: UITextView!
    @IBOutlet var tableView: UITableView!
    
    // MARK: - Variables
    let training: Training
    let hud = JGProgressHUD()
    
    // MARK: - Constructor
    init(training: Training) {
        self.training = training
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
        
        routineImage.contentMode = .scaleAspectFit
        routineImage.loadImage(from: training.image)
        routineImage.layer.cornerRadius = 15
        routineImage.layer.masksToBounds = true
        
        setupRoutineTextView()
        setupTableView()
    }
    private func setupRoutineTextView() {
        let titleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 20),
            .paragraphStyle: NSMutableParagraphStyle().centered()]
        let titleString = NSAttributedString(string: "Detalles\n\n", attributes: titleAttributes)
        let boldAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 16)]
        let normalAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 16)]
        
        let attributedString = NSMutableAttributedString()
        attributedString.append(titleString)
        attributedString.append(NSAttributedString(string: "Nombre: ", attributes: boldAttributes))
        attributedString.append(NSAttributedString(string: "\(training.name).\n\n", attributes: normalAttributes))
        attributedString.append(NSAttributedString(string: "Descripción: ", attributes: boldAttributes))
        attributedString.append(NSAttributedString(string: "\(training.description).\n\n", attributes: normalAttributes))
        attributedString.append(NSAttributedString(string: "Objetivos: ", attributes: boldAttributes))
        attributedString.append(NSAttributedString(string: "\(training.goals.rawValue).\n\n", attributes: normalAttributes))
        attributedString.append(NSAttributedString(string: "Duración: ", attributes: boldAttributes))
        attributedString.append(NSAttributedString(string: "\(training.durationInWeeks) semanas.\n\n", attributes: normalAttributes))
        attributedString.append(NSAttributedString(string: "Intensidad: ", attributes: boldAttributes))
        attributedString.append(NSAttributedString(string: "\(training.intensity.rawValue).\n\n", attributes: normalAttributes))
        attributedString.append(NSAttributedString(string: "Público: ", attributes: boldAttributes))
        attributedString.append(NSAttributedString(string: "\(training.targetAudience.rawValue).\n\n", attributes: normalAttributes))
        
        routineTextView.attributedText = attributedString
        routineTextView.isEditable = false
        routineTextView.isScrollEnabled = true
        
        routineTextView.layer.borderColor = UIColor.black.cgColor
        routineTextView.layer.borderWidth = 1
        routineTextView.layer.cornerRadius = 10
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "DayCell")
    }
    
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
}

// MARK: - Extension UITableViewDelegate, UITableViewDataSource
extension RoutineDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Day.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DayCell", for: indexPath)
        let day = Day.allCases[indexPath.row]
        let isRestDay = training.restDays.contains(day)
        let exerciseDay = training.exerciseDays.first(where: { $0.day == day })
        
        let dayText = NSMutableAttributedString(string: day.rawValue, attributes: [.font: UIFont.boldSystemFont(ofSize: 18)])
        
        if isRestDay {
            dayText.append(NSAttributedString(string: ": Descanso", attributes: [.font: UIFont.systemFont(ofSize: 18)]))
        } else if let exerciseDay = exerciseDay {
            let muscles = exerciseDay.muscleGroup.map { $0.rawValue }.joined(separator: ", ")
            dayText.append(NSAttributedString(string: ": \(muscles)", attributes: [.font: UIFont.systemFont(ofSize: 18)]))
        }
        
        cell.textLabel?.attributedText = dayText
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let day = Day.allCases[indexPath.row]
        let isRestDay = training.restDays.contains(day)
        
        if isRestDay {
            showAlert(title: "¡Día de Descanso!", message: "Hoy te toca descanso, mañana puedes emplear todas tus fuerzas", isError: true)
        } else if let exerciseDay = training.exerciseDays.first(where: { $0.day == day }) {
            let vc = ExerciseDayViewController(exerciseDay: exerciseDay)
            let navController = UINavigationController(rootViewController: vc)
            navController.modalPresentationStyle = .fullScreen
            present(navController, animated: true)
        }
    }
}

extension NSMutableParagraphStyle {
    static func centered() -> NSMutableParagraphStyle {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        return paragraphStyle
    }
}
