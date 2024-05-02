//
//  GymExercise.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 30/4/24.
//

import Foundation

struct GymExercise {
    var name: String // Nombre del ejercicio
    var muscleGroups: [MuscleGroup] // Grupos musculares trabajados por el ejercicio
    var equipment: [Equipment] // Equipamiento necesario para el ejercicio
    var instructions: String // Instrucciones detalladas sobre cómo realizar el ejercicio
    var videoURL: URL? // URL de un video demostrativo del ejercicio (opcional)
    var image: String? // Imagen del ejercicio (opcional)
    var difficulty: ExerciseDifficulty // Nivel de dificultad del ejercicio
    var repetitions: Int // Número de repeticiones
    var sets: Int // Número de series
}

enum MuscleGroup: String {
    case chest = "Pecho"
    case back = "Espalda"
    case legs = "Piernas"
    case shoulders = "Hombros"
    case arms = "Brazos"
    case core = "Core"
    case glutes = "Glúteos"
    case calves = "Gemelos"
    case hamstrings = "Isquiotibiales"
    case quadriceps = "Cuádriceps"
    case forearms = "Antebrazos"
    case traps = "Trapecios"
    case lats = "Dorsales"
    case obliques = "Oblicuos"
    case deltoids = "Deltoides"
    case triceps = "Tríceps"
    case biceps = "Bíceps"
    case serratusAnterior = "Serrato anterior"
    case adductors = "Aductores"
    case abductors = "Abductores"
}


enum Equipment: String {
    case bodyweight = "Peso corporal"
    case dumbbell = "Mancuernas"
    case barbell = "Barra"
    case kettlebell = "Pesa rusa"
    case machine = "Máquina"
    case resistanceBand = "Banda de resistencia"
    case cableMachine = "Máquina de cable"
    case cardioMachine = "Máquina cardiovascular"
}


enum ExerciseDifficulty: String {
    case beginner = "Principiante"
    case intermediate = "Intermedio"
    case advanced = "Avanzado"
}

