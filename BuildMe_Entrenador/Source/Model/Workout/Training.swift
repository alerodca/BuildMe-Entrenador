//
//  Training.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 6/5/24.
//

import Foundation

class Training {
    var name: String?
    var image: String?
    var description: String?
    var targetAudience: String?
    var duration: TrainingDuration?
    var intensity: TrainingIntensity?
    var material: TrainingMaterial?
    var weeklyTraining: WeeklyGymTrainingPlan?
    var durationInWeeks: Int?
    
    func toDictionary() -> [String: Any] {
        var dictionary: [String: Any] = [
            "name": name ?? "",
            "image": image ?? "",
            "description": description ?? "",
            "targetAudience": targetAudience ?? "",
            "duration": duration?.rawValue ?? "",
            "intensity": intensity?.rawValue ?? "",
            "material": material?.rawValue ?? "",
            "durationInWeeks": durationInWeeks ?? 0
        ]
        
        if let weeklyTraining = weeklyTraining {
            dictionary["weeklyTraining"] = weeklyTraining.toDictionary()
        }
        
        return dictionary
    }
    
    init(name: String?, image: String, description: String?, targetAudience: String?, duration: TrainingDuration?, intensity: TrainingIntensity?, material: TrainingMaterial?, weeklyTraining: WeeklyGymTrainingPlan?, durationInWeeks: Int?) {
        self.name = name
        self.image = image
        self.description = description
        self.targetAudience = targetAudience
        self.duration = duration
        self.intensity = intensity
        self.material = material
        self.weeklyTraining = weeklyTraining
        self.durationInWeeks = durationInWeeks
    }
}

// Enum para representar la duración del entrenamiento
enum TrainingDuration: String {
    case short = "Corto (menos de 30 minutos)"
    case medium = "Medio (30-60 minutos)"
    case long = "Largo (más de 60 minutos)"
}

// Enum para representar la intensidad del entrenamiento
enum TrainingIntensity: String {
    case low = "Baja"
    case medium = "Media"
    case high = "Alta"
}

// Enum para representar el material necesario para el entrenamiento
enum TrainingMaterial: String {
    case none = "Ninguno"
    case basic = "Básico (sin equipamiento adicional)"
    case advanced = "Avanzado (requiere equipamiento específico)"
}
