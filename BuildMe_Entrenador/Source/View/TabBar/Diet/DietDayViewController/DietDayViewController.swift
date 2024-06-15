//
//  DietDayViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 20/5/24.
//

import UIKit

class DietDayViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    @IBOutlet var dietDayLabel: UILabel!
    @IBOutlet var backView: UIView!
    @IBOutlet var nutritionalValuesLabel: UILabel!
    
    // MARK: - Variables
    let dietDay: DietDay
    
    // MARK: - Constructor
    init(dietDay: DietDay) {
        self.dietDay = dietDay
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
        
        dietDayLabel.text = "Día de Dieta: \(dietDay.day.rawValue)"
        nutritionalValuesLabel.attributedText = formatNutritionalValues(dietDay.nutritionalGoals)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "PrincipalTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    private func formatNutritionalValues(_ values: NutritionalValues) -> NSAttributedString {
        let boldFont = UIFont.boldSystemFont(ofSize: 15)
        let normalFont = UIFont.systemFont(ofSize: 15)
        
        let boldAttributes: [NSAttributedString.Key: Any] = [.font: boldFont]
        let normalAttributes: [NSAttributedString.Key: Any] = [.font: normalFont]
        
        let formattedString = NSMutableAttributedString()
        
        formattedString.append(NSAttributedString(string: "Valores Nutricionales\n", attributes: boldAttributes))
        
        formattedString.append(NSAttributedString(string: "Calorías: ", attributes: boldAttributes))
        formattedString.append(NSAttributedString(string: "\(values.calories)kcal\n", attributes: normalAttributes))
        
        formattedString.append(NSAttributedString(string: "Proteínas: ", attributes: boldAttributes))
        formattedString.append(NSAttributedString(string: "\(values.protein)g\n", attributes: normalAttributes))
        
        formattedString.append(NSAttributedString(string: "Carbohidratos: ", attributes: boldAttributes))
        formattedString.append(NSAttributedString(string: "\(values.carbohydrates)g\n", attributes: normalAttributes))
        
        formattedString.append(NSAttributedString(string: "Grasas: ", attributes: boldAttributes))
        formattedString.append(NSAttributedString(string: "\(values.fat)g", attributes: normalAttributes))
        
        return formattedString
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension DietDayViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 // Breakfast, Lunch, Snack, Dinner, MidMorningSnack
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PrincipalTableViewCell else { return UITableViewCell() }
        
        var mealName = ""
        var recipe: Recipe
        
        switch indexPath.row {
        case 0:
            mealName = "Desayuno"
            recipe = dietDay.breakfast
        case 1:
            mealName = "Almuerzo"
            recipe = dietDay.lunch
        case 2:
            mealName = "Merienda"
            recipe = dietDay.snack
        case 3:
            mealName = "Cena"
            recipe = dietDay.dinner
        case 4:
            mealName = "Snack de Media Mañana"
            recipe = dietDay.midMorningSnack
        default:
            fatalError("Unexpected row index")
        }
        
        cell.cellImageView.loadImage(from: recipe.image)
        let nameAttributedString = NSMutableAttributedString(string: "Nombre: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 11)])
        nameAttributedString.append(NSMutableAttributedString(string: recipe.name, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 11)]))
        cell.titleOneLabel.attributedText = nameAttributedString
        
        let foodAttributedString = NSMutableAttributedString(string: "Tipo Comida: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 11)])
        foodAttributedString.append(NSMutableAttributedString(string: recipe.mealType.rawValue, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 11)]))
        cell.titleSecondLabel.attributedText = foodAttributedString
        
        let timePreparationAttributedString = NSMutableAttributedString(string: "Tiempo Preparación: ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 11)])
        timePreparationAttributedString.append(NSMutableAttributedString(string: "\(recipe.preparationTime)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 11)]))
        cell.titleThirdLabel.attributedText = timePreparationAttributedString
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let selectedRecipe: Recipe
        
        switch indexPath.row {
        case 0:
            selectedRecipe = dietDay.breakfast
        case 1:
            selectedRecipe = dietDay.lunch
        case 2:
            selectedRecipe = dietDay.snack
        case 3:
            selectedRecipe = dietDay.dinner
        case 4:
            selectedRecipe = dietDay.midMorningSnack
        default:
            return
        }
        
        let vc = FoodDetailViewController(recipe: selectedRecipe)
        let navController = UINavigationController(rootViewController: vc)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true)
    }
}
