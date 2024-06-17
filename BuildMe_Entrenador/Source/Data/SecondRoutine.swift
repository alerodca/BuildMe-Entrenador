//
//  SecondRoutine.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 16/6/24.
//

import Foundation

class SecondRoutine {
    static let secondRoutine = Training(
        name: "Rutina Dividida por Grupos Musculares",
        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Froutines2.jpeg?alt=media&token=89e8f489-458c-490a-8fbe-edcb48969f20",
        description: "El Programa de Entrenamiento Dividida por Grupos Musculares es un plan detallado diseñado para personas con un nivel intermedio de condición física que buscan aumentar su fuerza y masa muscular (hipertrofia). Este programa se centra en trabajar diferentes grupos musculares en días específicos de la semana, permitiendo un enfoque intensivo en cada área mientras proporciona suficiente tiempo de recuperación para maximizar los resultados.",
        targetAudience: .intermediate,
        intensity: .high,
        durationInWeeks: 6,
        restDays: [.saturday, .sunday],
        exerciseDays: [
            ExerciseDay(
                day: .monday,
                muscleGroup: [.chest, .triceps],
                exercises: [
                    Exercise(name: "Press de banca con barra",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fpressbanca.png?alt=media&token=89d6e275-9faa-4fd8-a098-691ad30ff685",
                             description: "Ejercicio compuesto para desarrollar el pecho.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Press inclinado con mancuernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fpressinclinadomancuernas.png?alt=media&token=dc4350fc-63a0-49ea-8844-445c2b61fab7",
                             description: "Ejercicio para el desarrollo del pecho superior.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Aperturas con mancuernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fpaerturamancuernas.png?alt=media&token=cbf4c022-4a39-4f66-9d8b-55069270f39f",
                             description: "Ejercicio para aislar y desarrollar el pecho.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Fondos en paralelas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Ffondosparalelas.png?alt=media&token=9d0017cf-7c9b-4e0e-8690-23c5a9baac8c",
                             description: "Ejercicio para el tríceps y pecho.",
                             reps: 10,
                             sets: 3,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Extensiones de tríceps en polea",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fextensiones%20triceps%20polea.png?alt=media&token=c5bcf804-7e86-432e-91c4-03f1ac3a08c5",
                             description: "Ejercicio para aislar y desarrollar los tríceps.",
                             reps: 12,
                             sets: 4,
                             muscleGroup: .triceps),
                    
                    Exercise(name: "Patada de tríceps con mancuernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fpatadatricepsmancuernas.png?alt=media&token=ba5c6ebd-635f-4360-8544-9c19c1d65a56",
                             description: "Ejercicio para el desarrollo de los tríceps.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .triceps)
                ]),
            ExerciseDay(
                day: .tuesday,
                muscleGroup: [.back, .biceps],
                exercises: [
                    Exercise(name: "Dominadas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fdominadas.jpeg?alt=media&token=9bc34d03-4fd4-4908-a0cb-bba3dc1caa7b",
                             description: "Ejercicio para trabajar la espalda y los bíceps.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Remo con barra",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fremoconbarra.png?alt=media&token=0a8bbd30-e360-4269-977e-52d9380a93e4",
                             description: "Ejercicio para el desarrollo de la espalda baja y media.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Jalones en polea alta",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fjalones%20polea%20alta.png?alt=media&token=ef3d500f-b691-4063-aa66-6bd75c773eab",
                             description: "Ejercicio para el desarrollo de la espalda superior.",
                             reps: 10,
                             sets: 4,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Remo con mancuerna a una mano",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fremomancuernasunamano.png?alt=media&token=2584b3bd-9610-492c-a046-648d766efc6d",
                             description: "Ejercicio para el desarrollo de la espalda unilateralmente.",
                             reps: 10,
                             sets: 3,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Curl con barra",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fcurlbarra.png?alt=media&token=539b5c28-7077-4737-9462-8cf4ebd6d505",
                             description: "Ejercicio para el desarrollo de los bíceps.",
                             reps: 10,
                             sets: 4,
                             muscleGroup: .triceps),
                    
                    Exercise(name: "Curl martillo",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fcurlmartillo.png?alt=media&token=a1b912f5-ca01-4d3f-a2ae-04dc5adb9acb",
                             description: "Ejercicio para el desarrollo de los bíceps brachialis.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .triceps)
                ]),
            ExerciseDay(
                day: .wednesday,
                muscleGroup: [.legs],
                exercises: [
                    Exercise(name: "Sentadillas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fsentadillas.png?alt=media&token=28a22cbf-e2a0-4ce6-a783-3675b2a8bf7e",
                             description: "Ejercicio compuesto para trabajar los cuádriceps y glúteos.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .legs),
                    
                    Exercise(name: "Prensa de piernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fprensapiernas.png?alt=media&token=0a8017fd-529a-4047-a5cd-1ccc1e1970fb",
                             description: "Ejercicio para el desarrollo de los cuádriceps y glúteos.",
                             reps: 10,
                             sets: 4,
                             muscleGroup: .legs),
                    
                    Exercise(name: "Extensiones de piernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fextensionesdepiernas.png?alt=media&token=5e3cc73b-14bc-4407-8fd2-29cab9c3a579",
                             description: "Ejercicio para aislar y desarrollar los cuádriceps.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .legs),
                    
                    Exercise(name: "Curl de piernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fcurldepiernas.png?alt=media&token=7693406c-e024-445d-ad45-bb22d342155c",
                             description: "Ejercicio para aislar y desarrollar los isquiotibiales.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .legs),
                    
                    Exercise(name: "Peso muerto rumano",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fpesomuertorumano.png?alt=media&token=84c3952d-8676-49fe-b696-6f7bd05aaa50",
                             description: "Ejercicio para el desarrollo de los isquiotibiales y glúteos.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .legs),
                    
                    Exercise(name: "Elevación de talones (gemelos)",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Felevaciondetalones.png?alt=media&token=31458482-ab65-488b-8737-618ac3130704",
                             description: "Ejercicio para el desarrollo de los músculos de la pantorrilla.",
                             reps: 15,
                             sets: 4,
                             muscleGroup: .calves)
                ]),
            ExerciseDay(
                day: .thursday,
                muscleGroup: [.shoulders, .traps],
                exercises: [
                    Exercise(name: "Press militar con barra",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fpressmilitar.png?alt=media&token=5b00986e-31c9-4273-a6c3-d071b28869aa",
                             description: "Ejercicio compuesto para desarrollar los hombros.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .shoulders),
                    
                    Exercise(name: "Elevaciones laterales con mancuernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Felevacioneslaterales.png?alt=media&token=0bb7307a-a821-423f-84f4-b9e91760f7db",
                             description: "Ejercicio para el desarrollo de los hombros laterales.",
                             reps: 12,
                             sets: 4,
                             muscleGroup: .shoulders),
                    
                    Exercise(name: "Elevaciones frontales con mancuernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Felevacionesfrontales.png?alt=media&token=bbc1eb7a-60bd-4b65-a699-9123da91ee29",
                             description: "Ejercicio para el desarrollo de los hombros frontales.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .shoulders),
                    
                    Exercise(name: "Remo al mentón con barra",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fremoalcuelloconbarra.png?alt=media&token=d2685fd9-ddb1-4b46-bb54-a172baf3d227",
                             description: "Ejercicio para el desarrollo de los trapecios y hombros.",
                             reps: 10,
                             sets: 3,
                             muscleGroup: .traps),
                    
                    Exercise(name: "Encogimientos de hombros con barra",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fencogimientosdehombrosconbarra.png?alt=media&token=e1c66b6a-2488-48d5-8241-4441b179a7d8",
                             description: "Ejercicio para el desarrollo de los trapecios superiores.",
                             reps: 10,
                             sets: 4,
                             muscleGroup: .traps),
                    
                    Exercise(name: "Pájaro con mancuernas (deltoides posteriores)",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fpajarosmancuernas.png?alt=media&token=1103e8b9-fa5d-40bf-9de6-9301b0709481",
                             description: "Ejercicio para el desarrollo de los deltoides posteriores.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .shoulders)
                ]),
            ExerciseDay(
                day: .friday,
                muscleGroup: [.core, .cardio],
                exercises: [
                    Exercise(name: "Plancha",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fplancha.png?alt=media&token=9e32b7f4-c6a2-44aa-925c-ad5d987ae52b",
                             description: "Ejercicio para fortalecer el core y mejorar la estabilidad.",
                             reps: 0, // La plancha no tiene repeticiones, se usa para duración
                             sets: 3,
                             muscleGroup: .core),
                    
                    Exercise(name: "Crunches",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fcrunches.png?alt=media&token=d8705811-d09b-42bf-a0ba-dd208c6bf72e",
                             description: "Ejercicio para trabajar los músculos abdominales.",
                             reps: 15,
                             sets: 3,
                             muscleGroup: .core),
                    
                    Exercise(name: "Elevación de piernas colgado",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Felevacionpiernascolgado.png?alt=media&token=003aab7d-492b-4123-808c-20875253ad40",
                             description: "Ejercicio para trabajar los músculos abdominales inferiores.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .core),
                    
                    Exercise(name: "Russian twists",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Frussiantwists.png?alt=media&token=a8fa18b6-3eb1-40c2-8909-f347a2ce992c",
                             description: "Ejercicio para fortalecer los oblicuos.",
                             reps: 20,
                             sets: 3,
                             muscleGroup: .core),
                    
                    Exercise(name: "Mountain climbers",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fmountclimbners.png?alt=media&token=18b22f5b-2992-4a23-9b0d-82b12786e728",
                             description: "Ejercicio cardiovascular que también trabaja el core.",
                             reps: 20,
                             sets: 3,
                             muscleGroup: .core),
                    
                    Exercise(name: "Cardio (correr, bicicleta, elíptica)",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine2%2Fcorrer.png?alt=media&token=8b71073d-ba95-4334-9c25-77e0b6078d9a",
                             description: "Actividad cardiovascular para mejorar la resistencia.",
                             reps: 0,
                             sets: 1,
                             muscleGroup: .cardio)
                ]),
        ],
        goals: .muscleBuilding)
}

