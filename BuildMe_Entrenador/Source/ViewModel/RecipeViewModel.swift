//
//  RecipeViewModel.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import Foundation
import FirebaseDatabase

// MARK: - Protocol RecipesDelegate
protocol RecipesDelegate: AnyObject {
    func didFetchRecipes()
}

class RecipesViewModel {
    // MARK: - Variables
    let ref = Database.database().reference()
    // private var recipes: [HealthyRecipe] = []
    var recipes: [Recipe] = []
    weak var delegate: RecipesDelegate?
    
    // MARK: - Constructor
    init() {
        fetchRecipes()
    }
    
    // MARK: - Private Functions
    //private func fetchRecipes() {
    func fetchRecipes() {
        var recipes = [Recipe]()
        let healthyRecipesChild = ref.child("healthyRecipes")
        
        healthyRecipesChild.observeSingleEvent(of: .value) { (snapshot) in
            guard let dataSnapshot = snapshot.children.allObjects as? [DataSnapshot] else {
                return
            }
            for data in dataSnapshot {
                if let value = data.value as? [String: Any] {
                    do {
                        let jsonData = try JSONSerialization.data(withJSONObject: value)
                        let recipe = try JSONDecoder().decode(Recipe.self, from: jsonData)
                        recipes.append(recipe)
                    } catch {
                        print("Error al decodificar el objeto:", error)
                    }
                }
            }
            self.recipes = recipes
            self.delegate?.didFetchRecipes()
            print("fetched recipes")
        }
    }
    
    // MARK: - Functions
    func numberOfRows() -> Int {
        return recipes.count
    }
    
    func recipe(at index: Int) -> Recipe {
        return recipes[index]
    }
}
