//
//  InfoTaskViewModel.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 3/6/24.
//

import Foundation
import FirebaseDatabase

class InfoTaskViewModel {
    
    init(uid:String) {
        self.uid = uid
    }
    
    private var ref: DatabaseReference!
    private let uid: String
    
    var tasks: [TaskCompleted] = [] {
        didSet {
            self.reloadDataHandler?()
        }
    }
    
    var reloadDataHandler: (() -> Void)?
    
    func fetchData() {
        let currentUid = uid
        ref = Database.database().reference()
        
        ref.child("CompletedTasks").observeSingleEvent(of: .value, with: { [weak self] snapshot in
            guard let value = snapshot.value as? [String: Any] else {
                print("No se encontraron datos en el nodo especificado.")
                self?.tasks = []
                return
            }
            
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: Array(value.values), options: [])
                
                let decoder = JSONDecoder()
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy-MM-dd"
                decoder.dateDecodingStrategy = .formatted(dateFormatter)
                
                var tasks = try decoder.decode([TaskCompleted].self, from: jsonData)
                tasks = tasks.filter { $0.uid == currentUid }
                
                self?.tasks = tasks
            } catch {
                print("Error al decodificar los datos: \(error.localizedDescription)")
            }
        }) { error in
            print("Error al obtener datos: \(error.localizedDescription)")
        }
    }
}
