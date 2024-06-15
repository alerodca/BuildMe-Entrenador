//
//  DietDay.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import Foundation

/// Una clase que representa un día de dieta.
///
/// La clase `DietDay` contiene información sobre las comidas y objetivos nutricionales para un día específico.
class DietDay: Decodable {
    /// El día de la semana.
    var day: Day
    
    /// La receta del desayuno.
    var breakfast: Recipe
    
    /// La receta del almuerzo.
    var lunch: Recipe
    
    /// La receta del refrigerio.
    var snack: Recipe
    
    /// La receta de la cena.
    var dinner: Recipe
    
    /// La receta del refrigerio de media mañana.
    var midMorningSnack: Recipe
    
    /// Los objetivos nutricionales para el día.
    var nutritionalGoals: NutritionalValues
    
    /// Inicializa una nueva instancia de `DietDay`.
    ///
    /// - Parameters:
    ///   - day: El día de la semana.
    ///   - breakfast: La receta del desayuno.
    ///   - lunch: La receta del almuerzo.
    ///   - snack: La receta del refrigerio.
    ///   - dinner: La receta de la cena.
    ///   - midMorningSnack: La receta del refrigerio de media mañana.
    ///   - nutritionalGoals: Los objetivos nutricionales para el día.
    init(day: Day, breakfast: Recipe, lunch: Recipe, snack: Recipe, dinner: Recipe, midMorningSnack: Recipe, nutritionalGoals: NutritionalValues) {
        self.day = day
        self.breakfast = breakfast
        self.lunch = lunch
        self.snack = snack
        self.dinner = dinner
        self.midMorningSnack = midMorningSnack
        self.nutritionalGoals = nutritionalGoals
    }
    
    /// Convierte el día de dieta a un diccionario.
    ///
    /// - Returns: Un diccionario que contiene toda la información del día de dieta.
    func toDictionary() -> [String: Any] {
        return [
            "day": day.rawValue,
            "breakfast": breakfast.toDictionary(),
            "lunch": lunch.toDictionary(),
            "snack": snack.toDictionary(),
            "dinner": dinner.toDictionary(),
            "midMorningSnack": midMorningSnack.toDictionary(),
            "nutritionalGoals": nutritionalGoals.toDictionary()
        ]
    }
}
