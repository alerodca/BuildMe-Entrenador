//
//  DailyMealPlan.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 30/4/24.
//

import Foundation

struct DailyMealPlan: Decodable {
    var dayOfWeek: DayOfWeek
    var breakfast: Recipe
    var brunch: Recipe
    var lunch: Recipe
    var afternoonSnack: Recipe
    var dinner: Recipe
    
    // Propiedades adicionales
    var dailyNutritionGoals: NutritionGoals // Objetivos de nutrición diaria
    var notes: String // Notas adicionales
    var nutritionalValues: NutritionalValues // Total de valores nutricionales de todas las comidas
    
    func convertToDictionary() -> [String: Any] {
        var dictionary: [String: Any] = [:]
        
        // Agregar propiedades de DailyMealPlan al diccionario
        dictionary["dayOfWeek"] = dayOfWeek.rawValue
        dictionary["breakfast"] = breakfast.dictionaryRepresentation()
        dictionary["brunch"] = brunch.dictionaryRepresentation()
        dictionary["lunch"] = lunch.dictionaryRepresentation()
        dictionary["afternoonSnack"] = afternoonSnack.dictionaryRepresentation()
        dictionary["dinner"] = dinner.dictionaryRepresentation()
        dictionary["dailyNutritionGoals"] = dailyNutritionGoals.dictionaryRepresentation()
        dictionary["notes"] = notes
        dictionary["nutritionalValues"] = nutritionalValues.dictionaryRepresentation()
        
        return dictionary
    }
}

enum DayOfWeek: String, Decodable {
    case monday = "Lunes"
    case tuesday = "Martes"
    case wednesday = "Miércoles"
    case thursday = "Jueves"
    case friday = "Viernes"
    case saturday = "Sábado"
    case sunday = "Domingo"
}

struct NutritionGoals: Decodable {
    var totalCalories: Int
    var proteinGrams: Double
    var carbohydrateGrams: Double
    var fatGrams: Double
    var fiberGrams: Double
    
    func dictionaryRepresentation() -> [String: Any] {
        return [
            "totalCalories": totalCalories,
            "proteinGrams": proteinGrams,
            "carbohydrateGrams": carbohydrateGrams,
            "fatGrams": fatGrams,
            "fiberGrams": fiberGrams
        ]
    }
}

struct NutritionalValues: Decodable {
    var totalCalories: Int
    var proteinGrams: Double
    var carbohydrateGrams: Double
    var fatGrams: Double
    
    func dictionaryRepresentation() -> [String: Any] {
        return [
            "totalCalories": totalCalories,
            "proteinGrams": proteinGrams,
            "carbohydrateGrams": carbohydrateGrams,
            "fatGrams": fatGrams
        ]
    }
}


