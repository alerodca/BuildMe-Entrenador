//
//  WorkoutViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import UIKit
import FirebaseDatabase

class WorkoutViewController: UIViewController {

    let ref = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        strengthRoutine()
    }
    
    private func strengthRoutine() {
        let rutina = StregthRoutine.rutinaFuerza.toDictionary()
        
        ref.child("\(Constants.routineChild)/\(Constants.strengthRoutine)").setValue(rutina) { (error, ref) in
            if let error = error {
                print("Error al subir el objeto:", error.localizedDescription)
            } else {
                print("Objeto subido exitosamente a la base de datos")
            }
        }
    }

}
