//
//  Recipe.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import Foundation

/// Una clase que representa una receta.
///
/// La clase `Recipe` contiene información sobre una receta, incluyendo su nombre, ingredientes, tiempo de preparación, porciones, imagen, valores nutricionales, tipo de comida y consejos adicionales.
class Recipe: Decodable {
    /// El nombre de la receta.
    var name: String
    
    /// Una lista de ingredientes necesarios para la receta.
    var ingredients: [String]
    
    /// El tiempo de preparación en minutos.
    var preparationTime: Int
    
    /// El número de porciones que la receta produce.
    var servings: Int
    
    /// La URL o nombre de la imagen asociada con la receta.
    var image: String
    
    /// Los valores nutricionales de la receta.
    var nutritionalValues: NutritionalValues
    
    /// El tipo de comida (desayuno, almuerzo, cena, etc.).
    var mealType: MealType
    
    /// Consejos adicionales para la preparación de la receta (opcional).
    var tips: String?
    
    /// Inicializa una nueva instancia de `Recipe`.
    ///
    /// - Parameters:
    ///   - name: El nombre de la receta.
    ///   - ingredients: Una lista de ingredientes necesarios para la receta.
    ///   - preparationTime: El tiempo de preparación en minutos.
    ///   - servings: El número de porciones que la receta produce.
    ///   - image: La URL o nombre de la imagen asociada con la receta.
    ///   - nutritionalValues: Los valores nutricionales de la receta.
    ///   - mealType: El tipo de comida (desayuno, almuerzo, cena, etc.).
    ///   - tips: Consejos adicionales para la preparación de la receta (opcional).
    init(name: String, ingredients: [String], preparationTime: Int, servings: Int, image: String, nutritionalValues: NutritionalValues, mealType: MealType, tips: String?) {
        self.name = name
        self.ingredients = ingredients
        self.preparationTime = preparationTime
        self.servings = servings
        self.image = image
        self.nutritionalValues = nutritionalValues
        self.mealType = mealType
        self.tips = tips
    }
    
    /// Convierte la receta a un diccionario.
    ///
    /// - Returns: Un diccionario que contiene toda la información de la receta.
    func toDictionary() -> [String: Any] {
        return [
            "name": name,
            "ingredients": ingredients,
            "preparationTime": preparationTime,
            "servings": servings,
            "image": image,
            "nutritionalValues": nutritionalValues.toDictionary(),
            "mealType": mealType.rawValue,
            "tips": tips ?? ""
        ]
    }
}
