//
//  TaskCompleted.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 3/6/24.
//

import Foundation

/// Una clase que representa una tarea completada por un usuario.
///
/// Esta clase almacena información sobre una tarea completada, incluyendo el tipo de tarea, la fecha en que se completó,
/// observaciones adicionales, el identificador único del usuario y el identificador único de la tarea.
class TaskCompleted: Codable {
    
    /// El tipo de tarea completada.
    let typeTask: TaskType
    
    /// La fecha en que se completó la tarea.
    let date: Date
    
    /// Observaciones adicionales asociadas con la tarea completada.
    let observations: String
    
    /// El identificador único del usuario que completó la tarea.
    let uid: String
    
    /// El identificador único de la tarea completada.
    let taskUid: String
    
    // No es necesario definir CodingKeys cuando los nombres de las propiedades coinciden con las claves de codificación y decodificación.
    
    /// Inicializa una nueva instancia de `TaskCompleted`.
    ///
    /// - Parameters:
    ///   - typeTask: El tipo de tarea completada.
    ///   - date: La fecha en que se completó la tarea.
    ///   - observations: Observaciones adicionales asociadas con la tarea completada.
    ///   - uid: El identificador único del usuario que completó la tarea.
    ///   - taskUid: El identificador único de la tarea completada.
    init(typeTask: TaskType, date: Date, observations: String, uid: String, taskUid: String) {
        self.typeTask = typeTask
        self.date = date
        self.observations = observations
        self.uid = uid
        self.taskUid = taskUid
    }
    
    /// Convierte la tarea completada a un diccionario.
    ///
    /// - Returns: Un diccionario que contiene la información de la tarea completada.
    func toDictionary() -> [String: Any] {
        var dictionary: [String: Any] = [:]
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        // Convertir la fecha a un formato de cadena
        let dateString = dateFormatter.string(from: date)
        
        // Agregar las propiedades al diccionario
        dictionary["typeTask"] = typeTask.rawValue
        dictionary["date"] = dateString
        dictionary["observations"] = observations
        dictionary["uid"] = uid
        dictionary["taskUid"] = taskUid
        
        return dictionary
    }
}
