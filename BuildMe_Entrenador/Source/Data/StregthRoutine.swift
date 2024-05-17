//
//  StregthRoutine.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 16/5/24.
//

import Foundation

class StregthRoutine {
    static let strengthRoutine = Training(
        name: "Rutina de Fuerza",
        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Frutinafuerza.png?alt=media&token=f488ef62-784f-46af-96fe-7f4d8ec8d3b7",
        description: "Esta rutina de fuerza está diseñada para desarrollar y fortalecer los principales grupos musculares del cuerpo. Se centra en ejercicios compuestos que trabajan varios músculos a la vez, lo que ayuda a maximizar la eficiencia del entrenamiento y a mejorar la fuerza general. La rutina se divide en días específicos para trabajar diferentes grupos musculares, permitiendo así un adecuado descanso y recuperación entre sesiones.",
        targetAudience: .intermediate,
        intensity: .moderate,
        durationInWeeks: 6,
        restDays: [.wednesday,.sunday],
        exerciseDays: [
            ExerciseDay(
                day: .monday,
                muscleGroup: [
                    .chest, .shoulders, .triceps
                ],
                exercises: [
                    Exercise(
                        name: "Press de banca",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpressbanca.png?alt=media&token=8298ec1b-4abb-4c6e-9237-2ded0bd48343",
                        description: "Ejercicio para desarrollar el pecho y tríceps.",
                        reps: 8,
                        sets: 4,
                        muscleGroup: .chest),
                    Exercise(
                        name: "Press militar con barra",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpressmilitar.png?alt=media&token=3aceafa5-0df1-4ce3-9517-6ddcd0541e2f",
                        description: "Ejercicio para fortalecer los hombros y tríceps.",
                        reps: 8,
                        sets: 3,
                        muscleGroup: .shoulders),
                    Exercise(
                        name: "Aperturas con mancuernas en banco inclinado",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Faperturamancuernas.png?alt=media&token=86a40865-ee60-491d-9ed1-931f005fe9c3",
                        description: "Ejercicio para trabajar el pecho de forma específica.",
                        reps: 12,
                        sets: 3,
                        muscleGroup: .chest),
                    Exercise(
                        name: "Fondos en paralelas",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Ffondoparalelas.png?alt=media&token=27bfdf59-4a7e-43f1-9afb-57a2c8a9f451",
                        description: "Ejercicio para fortalecer el tríceps y el pecho.",
                        reps: 10,
                        sets: 3,
                        muscleGroup: .triceps),
                    Exercise(
                        name: "Extensiones de tríceps en polea alta",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fextensionestriceps.png?alt=media&token=3778cf93-d396-42ad-827d-590415bd1ceb",
                        description: "Ejercicio para aislar y fortalecer los tríceps.",
                        reps: 12, 
                        sets: 3,
                        muscleGroup: .triceps)
                ]),
            ExerciseDay(
                day: .tuesday,
                muscleGroup: [
                    .back, .biceps
                ],
                exercises: [
                    Exercise(
                        name: "Dominadas o Pull-ups",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fdominadas.png?alt=media&token=1b054ae1-caf8-449a-9093-d04a476e2b98",
                        description: "Ejercicio para desarrollar la espalda y los bíceps.",
                        reps: 6,
                        sets: 4,
                        muscleGroup: .back
                    ),
                    Exercise(
                        name: "Remo con barra o Remo con mancuerna",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fremoconbarra.png?alt=media&token=2c7124c2-6e77-42e4-87e5-2260f57ff890",
                        description: "Ejercicio para fortalecer la espalda y los bíceps.",
                        reps: 8,
                        sets: 4,
                        muscleGroup: .back
                    ),
                    Exercise(
                        name: "Peso muerto rumano",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpesomuertorumano.png?alt=media&token=8d477bf4-4db0-49fc-bb87-1fa204085599",
                        description: "Ejercicio para trabajar los músculos de la espalda baja y los isquiotibiales.",
                        reps: 8,
                        sets: 3,
                        muscleGroup: .lowerBack
                    ),
                    Exercise(
                        name: "Curl de bíceps con barra recta",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fcurldebiceps.png?alt=media&token=7ab8c9a9-f541-4bd1-8550-87d09ef9068f",
                        description: "Ejercicio para desarrollar los músculos del bíceps.",
                        reps: 8,
                        sets: 3,
                        muscleGroup: .biceps
                    ),
                    Exercise(
                        name: "Curl de martillo con mancuernas",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fcurlmartillo.png?alt=media&token=a4b945a8-7499-4848-8898-0b86dfed9bd9",
                        description: "Ejercicio para fortalecer los músculos del bíceps y antebrazos.",
                        reps: 10,
                        sets: 3,
                        muscleGroup: .biceps
                    )
                ]
            ),
            ExerciseDay(
                day: .thursday,
                muscleGroup: [
                    .legs
                ],
                exercises: [
                    Exercise(
                        name: "Sentadillas",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fsentadillas.png?alt=media&token=005705a9-8e51-4597-be1a-457b18ee09ba",
                        description: "Ejercicio para desarrollar los músculos de las piernas, glúteos y espalda baja.",
                        reps: 8,
                        sets: 4,
                        muscleGroup: .legs
                    ),
                    Exercise(
                        name: "Prensa de piernas",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fprensapiernas.png?alt=media&token=9491379b-be57-483d-bb2f-aecf16ee221b",
                        description: "Ejercicio para fortalecer los músculos de las piernas, especialmente los cuádriceps.",
                        reps: 8,
                        sets: 4,
                        muscleGroup: .legs
                    ),
                    Exercise(
                        name: "Peso muerto convencional",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpesomuerto.png?alt=media&token=b31df61c-8ae4-4cb6-a008-c160a0ac999a",
                        description: "Ejercicio para trabajar los músculos de la espalda baja, los glúteos y los isquiotibiales.",
                        reps: 6,
                        sets: 3,
                        muscleGroup: .lowerBack
                    ),
                    Exercise(
                        name: "Extensiones de piernas",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fprensapiernas.png?alt=media&token=9491379b-be57-483d-bb2f-aecf16ee221b",
                        description: "Ejercicio para aislar y fortalecer los cuádriceps.",
                        reps: 10,
                        sets: 3,
                        muscleGroup: .quadriceps
                    ),
                    Exercise(
                        name: "Curl de piernas acostado",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fcurlpierna.png?alt=media&token=51500316-e9a7-46d9-ab54-2fda58faeec5",
                        description: "Ejercicio para trabajar los músculos de los isquiotibiales.",
                        reps: 10,
                        sets: 3,
                        muscleGroup: .hamstrings
                    ),
                    Exercise(
                        name: "Elevaciones de talones de pie",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Felevacionestalones.png?alt=media&token=85e84725-3c6c-492f-9024-ffad2dcb503c",
                        description: "Ejercicio para fortalecer los músculos de la pantorrilla.",
                        reps: 12,
                        sets: 4,
                        muscleGroup: .calves
                    )
                ]
            ),
            ExerciseDay(
                day: .friday,
                muscleGroup: [
                    .chest, .shoulders, .triceps
                ],
                exercises: [
                    Exercise(
                        name: "Press de banca inclinado",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpressbancainclinado.png?alt=media&token=172281be-b7c4-4471-9c1c-ca772524dd4e",
                        description: "Variación del press de banca para enfocar en la parte superior del pecho.",
                        reps: 8,
                        sets: 4,
                        muscleGroup: .chest
                    ),
                    Exercise(
                        name: "Press de hombros con mancuernas",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpresshombromancuernas.png?alt=media&token=9d1d38d9-5d47-40a9-bc63-03a00d0c71f3",
                        description: "Ejercicio para fortalecer los hombros.",
                        reps: 8,
                        sets: 3,
                        muscleGroup: .shoulders
                    ),
                    Exercise(
                        name: "Flexiones de pecho",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fflexionespecho.png?alt=media&token=0c2828b1-f0b3-4c24-a218-bb5754064317",
                        description: "Ejercicio clásico para trabajar el pecho y los tríceps.",
                        reps: 10,
                        sets: 3,
                        muscleGroup: .chest
                    ),
                    Exercise(
                        name: "Fondos en máquina de pecho",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Ffondosmaquinapecho.png?alt=media&token=45f4c91d-ac91-46e0-a779-fb20ac086997",
                        description: "Ejercicio para aislar y fortalecer el pecho.",
                        reps: 10,
                        sets: 3,
                        muscleGroup: .chest
                    ),
                    Exercise(
                        name: "Extensiones de tríceps con barra EZ",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fextensionestricepsbarraez.png?alt=media&token=c4643a03-1915-46a5-bc3e-02b064f323a7",
                        description: "Ejercicio para trabajar los tríceps.",
                        reps: 8,
                        sets: 3,
                        muscleGroup: .triceps
                    ),
                    Exercise(
                        name: "Fondos de tríceps en banco",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Ffondotricepsbanco.png?alt=media&token=1a5f049c-ac8e-4dee-9d06-17c469cf20e0",
                        description: "Ejercicio para fortalecer los tríceps.",
                        reps: 10,
                        sets: 3,
                        muscleGroup: .triceps
                    )
                ]
            ),
            ExerciseDay(
                day: .saturday,
                muscleGroup: [
                    .back, .biceps
                ],
                exercises: [
                    Exercise(
                        name: "Remo con barra T",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fremobarrat.png?alt=media&token=85622f40-33eb-4062-b2d3-ace1315a63cf",
                        description: "Variación del remo para enfocar en la espalda.",
                        reps: 8,
                        sets: 4,
                        muscleGroup: .back
                    ),
                    Exercise(
                        name: "Jalones al pecho con polea alta",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fjalonespechopoleaalta.png?alt=media&token=7513d835-2b81-46ec-b419-a4b4cc293bc6",
                        description: "Ejercicio para trabajar la espalda y los brazos.",
                        reps: 8,
                        sets: 4,
                        muscleGroup: .back
                    ),
                    Exercise(
                        name: "Peso muerto sumo",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpesomuertosumo.png?alt=media&token=b5ce7bb6-f216-4bc3-8eb3-dc8a42e2efe3",
                        description: "Variación del peso muerto para enfocar en los glúteos y los isquiotibiales.",
                        reps: 6,
                        sets: 3,
                        muscleGroup: .glutes
                    ),
                    Exercise(
                        name: "Curl de bíceps con mancuernas en banco inclinado",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fcurlbicepsmancuernas.png?alt=media&token=1386896d-ef19-4b12-bdd2-5f9d188db969",
                        description: "Ejercicio para trabajar los bíceps.",
                        reps: 8,
                        sets: 3,
                        muscleGroup: .biceps
                    ),
                    Exercise(
                        name: "Curl de concentración con mancuerna",
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fcurlbicepsconcentrado.png?alt=media&token=b58d5432-8027-471d-ba25-aadef4e13a5f",
                        description: "Ejercicio para aislar y fortalecer los bíceps.",
                        reps: 10,
                        sets: 3,
                        muscleGroup: .biceps
                    )
                ]
            ),
        ],
        goals: .muscleBuilding)
}

/*uploadTrainingToFirebase(training: StregthRoutine.strengthRoutine)
 private func uploadTrainingToFirebase(training: Training) {
 // Referencia a la base de datos de Firebase
 let ref = Database.database().reference()
 
 // Convertir el objeto Training a un diccionario
 let trainingData = training.toDictionary()
 
 // Generar una nueva clave única para el objeto Training
 let newTrainingRef = ref.child(Constants.routineChild).child(Constants.strengthRoutine)
 
 // Subir el objeto Training al nodo "trainings" en Firebase Database
 newTrainingRef.setValue(trainingData) { error, _ in
     if let error = error {
         print("Error al subir el objeto Training a Firebase Database: \(error.localizedDescription)")
     } else {
         print("Objeto Training subido exitosamente a Firebase Database")
     }
 }
}*/
