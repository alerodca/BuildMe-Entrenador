//
//  GymTrainingDay.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 30/4/24.
//

import Foundation

struct GymTrainingDay {
    var date: Date // Fecha del entrenamiento
    var dayOfWeek: DayOfWeek // Día de la semana del entrenamiento
    var muscleGroupTarget: [MuscleGroup] // Grupos musculares a trabajar durante el día de entrenamiento
    var exercises: [GymExercise] // Lista de ejercicios del día de entrenamiento
    var comments: String? // Comentarios adicionales sobre el entrenamiento
}
