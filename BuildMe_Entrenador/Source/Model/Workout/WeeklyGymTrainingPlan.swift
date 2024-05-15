//
//  WeeklyGymTrainingPlan.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 30/4/24.
//

import Foundation

struct WeeklyGymTrainingPlan: Decodable {
    var trainingDays: [GymTrainingDay] // Lista de días de entrenamiento para la semana
    var restDays: [DayOfWeek] // Lista de días de descanso durante el plan de entrenamiento
    var goal: TrainingGoal // Objetivo de entrenamiento para la semana
    var notes: String? // Notas adicionales sobre el plan de entrenamiento
    
    func toDictionary() -> [String: Any] {
        var dictionary: [String: Any] = [
            "goal": goal.rawValue,
            "notes": notes ?? ""
        ]
        
        // Convertir los arrays a arrays de strings
        let trainingDayDictionaries = trainingDays.map { $0.toDictionary() }
        dictionary["trainingDays"] = trainingDayDictionaries
        
        let restDayStrings = restDays.map { $0.rawValue }
        dictionary["restDays"] = restDayStrings
        
        return dictionary
    }
}

enum TrainingGoal: String, Decodable {
    case muscleGain = "Muscle Gain"
    case fatLoss = "Fat Loss"
    case strengthBuilding = "Strength Building"
    case enduranceImprovement = "Endurance Improvement"
}
