//
//  WeeklyMealPlan.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import Foundation

struct WeeklyMealPlan: Decodable {
    var name: String
    var photo: String
    var description: String
    var numberOfDays: Int
    var dailyMealPlans: [DailyMealPlan]
    var totalCalories: Int
    var dietaryRestrictions: [String] 
    var allergies: [String]

    func convertToDictionary() -> [String: Any] {
        return [
            "name": name,
            "photo": photo,
            "description": description,
            "numberOfDays": numberOfDays,
            "dailyMealPlans": dailyMealPlans.map { $0.convertToDictionary() },
            "totalCalories": totalCalories,
            "dietaryRestrictions": dietaryRestrictions,
            "allergies": allergies
        ]
    }
}
