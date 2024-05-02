//
//  WeeklyGymTrainingPlan.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 30/4/24.
//

import Foundation

struct WeeklyGymTrainingPlan {
    var startDate: Date // Fecha de inicio del plan de entrenamiento semanal
    var durationInWeeks: Int // Duración en semanas del plan de entrenamiento
    var trainingDays: [GymTrainingDay] // Lista de días de entrenamiento para la semana
    var restDays: [Date] // Lista de días de descanso durante el plan de entrenamiento
    var goal: TrainingGoal // Objetivo de entrenamiento para la semana
    var notes: String? // Notas adicionales sobre el plan de entrenamiento
}

enum TrainingGoal {
    case muscleGain
    case fatLoss
    case strengthBuilding
    case enduranceImprovement
}
