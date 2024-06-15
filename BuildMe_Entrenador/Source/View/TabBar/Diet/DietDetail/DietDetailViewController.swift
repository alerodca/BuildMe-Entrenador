//
//  DietDetailViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 17/5/24.
//

import UIKit
import JGProgressHUD

class DietDetailViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var backView: UIView!
    @IBOutlet var routineImage: UIImageView!
    @IBOutlet var routineTextView: UITextView!
    @IBOutlet var tableView: UITableView!
    
    // MARK: - Variables
    let diet: Diet
    let hud = JGProgressHUD()
    
    // MARK: - Constructor
    init(diet: Diet) {
        self.diet = diet
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
        routineImage.loadImage(from: diet.image)
        routineImage.layer.cornerRadius = 15
        routineImage.layer.masksToBounds = true
        
        setupDietTextView()
        setupTableView()
    }
    private func setupDietTextView() {
        let titleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 24),
            .paragraphStyle: NSMutableParagraphStyle().centered()]
        let titleString = NSAttributedString(string: "Detalles\n\n", attributes: titleAttributes)
        let boldAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 18)]
        let regularAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18)]
        let attributedString = NSMutableAttributedString()
        attributedString.append(titleString)
        attributedString.append(NSAttributedString(string: "Nombre: ", attributes: boldAttributes))
        attributedString.append(NSAttributedString(string: "\(diet.name).\n\n", attributes: regularAttributes))
        attributedString.append(NSAttributedString(string: "Descripción: ", attributes: boldAttributes))
        attributedString.append(NSAttributedString(string: "\(diet.description).\n\n", attributes: regularAttributes))
        attributedString.append(NSAttributedString(string: "Duración: ", attributes: boldAttributes))
        attributedString.append(NSAttributedString(string: "\(diet.durationInWeeks) semanas.\n\n", attributes: regularAttributes))
        
        routineTextView.attributedText = attributedString
        routineTextView.isEditable = false
        routineTextView.isScrollEnabled = true
        
        routineTextView.layer.borderColor = UIColor.black.cgColor
        routineTextView.layer.borderWidth = 1
        routineTextView.layer.cornerRadius = 15
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
extension DietDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diet.days.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DayCell", for: indexPath)
        let dietDay = diet.days[indexPath.row]
        
        let dayText = NSMutableAttributedString(string: dietDay.day.rawValue, attributes: [.font: UIFont.boldSystemFont(ofSize: 20)])
        
        // Aquí puedes agregar más detalles del día si lo deseas
        cell.textLabel?.attributedText = dayText
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dietDay = diet.days[indexPath.row]
        
        let vc = DietDayViewController(dietDay: dietDay)
        let navController = UINavigationController(rootViewController: vc)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true)
        
        print("Día: \(dietDay.day.rawValue)")
    }
}
