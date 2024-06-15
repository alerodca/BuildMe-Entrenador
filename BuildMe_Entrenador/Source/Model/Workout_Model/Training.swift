//
//  Training.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import Foundation

/// Una clase que representa un programa de entrenamiento.
///
/// La clase `Training` contiene información sobre un programa de entrenamiento específico, incluyendo su nombre, imagen, descripción, audiencia objetivo, intensidad, duración en semanas, días de descanso, días de ejercicio y objetivos.
class Training: Decodable {
    /// El nombre del programa de entrenamiento.
    var name: String
    
    /// La URL o nombre de la imagen asociada con el programa de entrenamiento.
    var image: String
    
    /// La descripción del programa de entrenamiento.
    var description: String
    
    /// La audiencia objetivo del programa de entrenamiento.
    var targetAudience: TargetAudience
    
    /// La intensidad del programa de entrenamiento.
    var intensity: Intensity
    
    /// La duración del programa de entrenamiento en semanas.
    var durationInWeeks: Int
    
    /// Los días de descanso del programa de entrenamiento.
    var restDays: [Day]
    
    /// Los días de ejercicio del programa de entrenamiento.
    var exerciseDays: [ExerciseDay]
    
    /// Los objetivos del programa de entrenamiento.
    var goals: Goals
    
    /// Inicializa una nueva instancia de `Training`.
    ///
    /// - Parameters:
    ///   - name: El nombre del programa de entrenamiento.
    ///   - image: La URL o nombre de la imagen asociada con el programa de entrenamiento.
    ///   - description: La descripción del programa de entrenamiento.
    ///   - targetAudience: La audiencia objetivo del programa de entrenamiento.
    ///   - intensity: La intensidad del programa de entrenamiento.
    ///   - durationInWeeks: La duración del programa de entrenamiento en semanas.
    ///   - restDays: Los días de descanso del programa de entrenamiento.
    ///   - exerciseDays: Los días de ejercicio del programa de entrenamiento.
    ///   - goals: Los objetivos del programa de entrenamiento.
    init(name: String, image: String, description: String, targetAudience: TargetAudience, intensity: Intensity, durationInWeeks: Int, restDays: [Day], exerciseDays: [ExerciseDay], goals: Goals) {
        self.name = name
        self.image = image
        self.description = description
        self.targetAudience = targetAudience
        self.intensity = intensity
        self.durationInWeeks = durationInWeeks
        self.restDays = restDays
        self.exerciseDays = exerciseDays
        self.goals = goals
    }
    
    /// Convierte el programa de entrenamiento a un diccionario.
    ///
    /// - Returns: Un diccionario que contiene toda la información del programa de entrenamiento.
    func toDictionary() -> [String: Any] {
        return [
            "name": name,
            "image": image,
            "description": description,
            "targetAudience": targetAudience.rawValue,
            "intensity": intensity.rawValue,
            "durationInWeeks": durationInWeeks,
            "restDays": restDays.map { $0.rawValue },
            "exerciseDays": exerciseDays.map { $0.toDictionary() },
            "goals": goals.rawValue
        ]
    }
}
