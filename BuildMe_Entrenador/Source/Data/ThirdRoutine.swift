//
//  ThirdRoutine.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 16/6/24.
//

import Foundation

class ThirdRoutine {
    static let thirdRoutine = Training(
        name: "Rutina de Entrenamiento de Cuerpo Completo",
        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Froutines3.jpeg?alt=media&token=986ca4e4-84b3-4fc9-ab4f-567eb145e905",
        description: "Rutina de entrenamiento de cuerpo completo diseñada para desarrollar todos los grupos musculares.",
        targetAudience: .beginner,
        intensity: .moderate,
        durationInWeeks: 8,
        restDays: [.wednesday, .sunday],
        exerciseDays: [
            ExerciseDay(
                day: .monday,
                muscleGroup: [.legs, .chest, .back, .shoulders, .arms],
                exercises: [
                    Exercise(name: "Sentadillas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fsentadilla.png?alt=media&token=c9b2d787-bff4-4d38-bd63-e3cf38ad9fdd",
                             description: "Descripción de las sentadillas.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .legs),
                    
                    Exercise(name: "Press de banca con barra",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpressbancaconbarra.png?alt=media&token=8d510952-db11-4f3c-ab0c-2c3de52943b5",
                             description: "Descripción del press de banca con barra.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Dominadas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fdominadas.jpg?alt=media&token=d2e56b3b-c37b-47f3-8ac1-9bb6f976e908",
                             description: "Descripción de las dominadas.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .back),
                    
                    Exercise(name: "Peso muerto",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpesomuerto.png?alt=media&token=cb2c95d2-e63b-4834-8d6b-2bd84a0af575",
                             description: "Descripción del peso muerto.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .back),
                    
                    Exercise(name: "Press militar con barra",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpressmilitarconbarra.png?alt=media&token=ba4e827d-d0d6-4767-a92f-2960308342bc",
                             description: "Descripción del press militar con barra.",
                             reps: 10,
                             sets: 3,
                             muscleGroup: .shoulders),
                    
                    Exercise(name: "Curl con barra",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fcurlbarra.png?alt=media&token=69e5132d-7a42-4228-822a-50b0f7d3c47e",
                             description: "Descripción del curl con barra.",
                             reps: 10,
                             sets: 3,
                             muscleGroup: .arms)
                ]
            ),
            ExerciseDay(
                day: .tuesday,
                muscleGroup: [.legs, .chest, .back, .shoulders, .triceps],
                exercises: [
                    Exercise(name: "Prensa de piernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fprensapiernas.png?alt=media&token=a8701993-5015-40ea-aeaa-3b80bac17cf2",
                             description: "Descripción de la prensa de piernas.",
                             reps: 10,
                             sets: 4,
                             muscleGroup: .legs),
                    
                    Exercise(name: "Press inclinado con mancuernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpressinclinadomancuernas.png?alt=media&token=e223f17a-6743-4372-873e-535cd308b73e",
                             description: "Descripción del press inclinado con mancuernas.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Remo con barra",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fremoconbarra.png?alt=media&token=a71d5c9c-a82e-47fe-b09e-5c454a1ef335",
                             description: "Descripción del remo con barra.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .back),
                    
                    Exercise(name: "Peso muerto rumano",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpesomuertorumano.png?alt=media&token=3d931d8e-b54e-43c1-b4a3-0c2a57b29ce2",
                             description: "Descripción del peso muerto rumano.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .legs),  // Puedes ajustar el grupo muscular según el enfoque del ejercicio
                    
                    Exercise(name: "Elevaciones laterales con mancuernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Felevacioneslaterales.png?alt=media&token=46eeb823-5aa7-45e6-a3cb-4b69a4fae2cd",
                             description: "Descripción de las elevaciones laterales con mancuernas.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .shoulders),
                    
                    Exercise(name: "Extensiones de tríceps en polea",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fextensionestricepspolea.png?alt=media&token=963827e6-a151-47a6-af1a-c744fb4e4edf",
                             description: "Descripción de las extensiones de tríceps en polea.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .triceps)
                ]
            ),
            ExerciseDay(
                day: .thursday,
                muscleGroup: [.legs, .chest, .back, .deltoids, .arms],
                exercises: [
                    Exercise(name: "Sentadilla frontal",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fsentadillafrontal.png?alt=media&token=0bbdc3de-aa7f-46ea-ae8f-9844628024dc",
                             description: "Descripción de la sentadilla frontal.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .legs),
                    
                    Exercise(name: "Press de banca declinado con barra",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpressbancaconbarra.png?alt=media&token=8d510952-db11-4f3c-ab0c-2c3de52943b5",
                             description: "Descripción del press de banca declinado con barra.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Jalones en polea alta",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fjalonpoleaalta.png?alt=media&token=c0cea15f-1b20-4c75-a735-57cc7f79c19f",
                             description: "Descripción de los jalones en polea alta.",
                             reps: 10,
                             sets: 4,
                             muscleGroup: .back),
                    
                    Exercise(name: "Zancadas con mancuernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fzancadasmancuernas.png?alt=media&token=a49daf8b-83f4-459a-8360-dc436fcc7d20",
                             description: "Descripción de las zancadas con mancuernas.",
                             reps: 10,
                             sets: 4,
                             muscleGroup: .legs),
                    
                    Exercise(name: "Pájaro con mancuernas (deltoides posteriores)",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpajarosmancuerna.png?alt=media&token=b63486c1-d0de-4304-87bd-96a333082204",
                             description: "Descripción del pájaro con mancuernas para deltoides posteriores.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .deltoids),
                    
                    Exercise(name: "Curl martillo",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fcurl%20martillo.png?alt=media&token=bb96c9e6-4e3c-4504-be15-b43158417c22",
                             description: "Descripción del curl martillo.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .arms)
                ]
            ),
            ExerciseDay(
                day: .friday,
                muscleGroup: [.legs, .chest, .back, .shoulders, .triceps],
                exercises: [
                    Exercise(name: "Sentadilla búlgara",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fsentadillabulgara.png?alt=media&token=031211b4-5079-4f8c-94b8-035990a7524f",
                             description: "Descripción de la sentadilla búlgara.",
                             reps: 10,
                             sets: 4,
                             muscleGroup: .legs),
                    
                    Exercise(name: "Press de banca con mancuernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpressbancamancuernas.png?alt=media&token=5e0991c2-cbf1-4aab-ba55-3c81995f1445",
                             description: "Descripción del press de banca con mancuernas.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Remo con mancuerna a una mano",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fremomancuernasaunamano.png?alt=media&token=70241cd5-9f04-4dc5-8f09-df0cdbc0276e",
                             description: "Descripción del remo con mancuerna a una mano.",
                             reps: 10,
                             sets: 4,
                             muscleGroup: .back),
                    
                    Exercise(name: "Peso muerto sumo",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpesomuertosumo.png?alt=media&token=17bf2aee-c92a-443a-892a-fe96416ae982",
                             description: "Descripción del peso muerto sumo.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .legs),
                    
                    Exercise(name: "Remo al mentón con barra",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fremoalmentonconbarra.png?alt=media&token=02690bde-7503-4aaa-8067-08bddb97da69",
                             description: "Descripción del remo al mentón con barra.",
                             reps: 10,
                             sets: 3,
                             muscleGroup: .shoulders),
                    
                    Exercise(name: "Patada de tríceps con mancuernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpatadatricepsmancuernas.png?alt=media&token=6aad0273-bdf7-42a5-8f79-1e8c4ed25a24",
                             description: "Descripción de la patada de tríceps con mancuernas.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .triceps)
                ]
            ),
            ExerciseDay(
                day: .saturday,
                muscleGroup: [.legs, .chest, .back, .shoulders, .abs],
                exercises: [
                    Exercise(name: "Sentadilla hack",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fsentadillahack.png?alt=media&token=e8577a4f-214f-459f-9d20-49774deb314f",
                             description: "Descripción de la sentadilla hack.",
                             reps: 10,
                             sets: 4,
                             muscleGroup: .legs),
                    
                    Exercise(name: "Press de banca en máquina Smith",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpressbancamaquinasmith.png?alt=media&token=15a160e0-8e26-4754-ae2f-df32c2bd5cba",
                             description: "Descripción del press de banca en máquina Smith.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .chest),
                    
                    Exercise(name: "Pull-over con mancuerna",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpullovermancuerna.png?alt=media&token=cfa40c7d-34d5-44e6-bc4d-19b5a69a17af",
                             description: "Descripción del pull-over con mancuerna.",
                             reps: 10,
                             sets: 4,
                             muscleGroup: .chest), // También trabaja el músculo dorsal
                    
                    Exercise(name: "Peso muerto convencional",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fpesomuertoconvencional.png?alt=media&token=d78c2edb-a0b3-4ebc-9391-3bcebe1b343a",
                             description: "Descripción del peso muerto convencional.",
                             reps: 8,
                             sets: 4,
                             muscleGroup: .back),
                    
                    Exercise(name: "Elevaciones frontales con mancuernas",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Felevacionesfrontales.png?alt=media&token=7bc11934-662d-4c8e-ae03-9b054bdd74ca",
                             description: "Descripción de las elevaciones frontales con mancuernas.",
                             reps: 12,
                             sets: 3,
                             muscleGroup: .shoulders),
                    
                    Exercise(name: "Crunches",
                             image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FRoutine3%2Fcrunches.png?alt=media&token=b3943f70-1c2b-4c91-bbcb-00a57ae157a7",
                             description: "Descripción de los crunches.",
                             reps: 15,
                             sets: 3,
                             muscleGroup: .abs)
                ]
            ),
        ],
        goals: .strengthTraining
    )
}
