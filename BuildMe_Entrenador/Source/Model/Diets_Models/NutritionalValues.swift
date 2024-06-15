//
//  NutritionalValues.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import Foundation

/// Una clase que representa los valores nutricionales de una receta.
///
/// La clase `NutritionalValues` contiene información nutricional como calorías, proteínas, carbohidratos y grasas.
class NutritionalValues: Decodable {
    /// La cantidad de calorías.
    var calories: Double
    
    /// La cantidad de proteínas en gramos.
    var protein: Double
    
    /// La cantidad de carbohidratos en gramos.
    var carbohydrates: Double
    
    /// La cantidad de grasas en gramos.
    var fat: Double
    
    /// Inicializa una nueva instancia de `NutritionalValues`.
    ///
    /// - Parameters:
    ///   - calories: La cantidad de calorías.
    ///   - protein: La cantidad de proteínas en gramos.
    ///   - carbohydrates: La cantidad de carbohidratos en gramos.
    ///   - fat: La cantidad de grasas en gramos.
    init(calories: Double, protein: Double, carbohydrates: Double, fat: Double) {
        self.calories = calories
        self.protein = protein
        self.carbohydrates = carbohydrates
        self.fat = fat
    }
    
    /// Convierte los valores nutricionales a un diccionario.
    ///
    /// - Returns: Un diccionario que contiene toda la información nutricional.
    func toDictionary() -> [String: Any] {
        return [
            "calories": calories,
            "protein": protein,
            "carbohydrates": carbohydrates,
            "fat": fat
        ]
    }
}
