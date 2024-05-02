//
//  DietViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import UIKit
import FirebaseDatabase

class DietViewController: UIViewController {

    let ref = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mediterranianDiet()
    }

    private func mediterranianDiet() {
        let dietaMediterranea = WeeklyMealPlan(
            numberOfDays: 14,
            dailyMealPlans: [
                MediterranianDiet.lunes,
                MediterranianDiet.martes,
                MediterranianDiet.miercoles,
                MediterranianDiet.jueves,
                MediterranianDiet.viernes,
                MediterranianDiet.sabado,
                MediterranianDiet.domingo
            ]
        )
        
        let object = dietaMediterranea.convertToDictionary()
        ref.child("\(Constants.dietChild)/\(Constants.mediterranianDietChild)").setValue(object) { (error, ref) in
            if let error = error {
                print("Error al subir el objeto:", error.localizedDescription)
            } else {
                print("Objeto subido exitosamente a la base de datos")
            }
        }
    }
}
