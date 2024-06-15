//
//  Diet.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 15/5/24.
//

import Foundation

/// Una clase que representa una dieta.
///
/// La clase `Diet` contiene información sobre una dieta específica, incluyendo su nombre, imagen, descripción, duración en semanas y los días de dieta.
class Diet: Decodable {
    /// El nombre de la dieta.
    var name: String
    
    /// La URL o nombre de la imagen asociada con la dieta.
    var image: String
    
    /// La descripción de la dieta.
    var description: String
    
    /// La duración de la dieta en semanas.
    var durationInWeeks: Int
    
    /// Una lista de días de dieta.
    var days: [DietDay]
    
    /// Inicializa una nueva instancia de `Diet`.
    ///
    /// - Parameters:
    ///   - name: El nombre de la dieta.
    ///   - image: La URL o nombre de la imagen asociada con la dieta.
    ///   - description: La descripción de la dieta.
    ///   - durationInWeeks: La duración de la dieta en semanas.
    ///   - days: Una lista de días de dieta.
    init(name: String, image: String, description: String, durationInWeeks: Int, days: [DietDay]) {
        self.name = name
        self.image = image
        self.description = description
        self.durationInWeeks = durationInWeeks
        self.days = days
    }
    
    /// Convierte la dieta a un diccionario.
    ///
    /// - Returns: Un diccionario que contiene toda la información de la dieta.
    func toDictionary() -> [String: Any] {
        return [
            "name": name,
            "image": image,
            "description": description,
            "durationInWeeks": durationInWeeks,
            "days": days.map { $0.toDictionary() }
        ]
    }
}
