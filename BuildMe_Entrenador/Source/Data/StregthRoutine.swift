//
//  StregthRoutine.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 2/5/24.
//

import Foundation

class StregthRoutine {
    static let rutinaFuerza = Training(
        name: "Rutina de Fuerza",
        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Frutinafuerza.png?alt=media&token=f488ef62-784f-46af-96fe-7f4d8ec8d3b7",
        description: "Rutina de entrenamiento enfocada en la fuerza y resistencia",
        targetAudience: "Personas de nivel intermedio",
        duration: .medium,
        intensity: .medium,
        material: .advanced,
        weeklyTraining: WeeklyGymTrainingPlan(
            trainingDays: [
                GymTrainingDay(
                    dayOfWeek: .monday,
                    muscleGroupTarget: [.chest, .shoulders, .triceps],
                    exercises: [
                        GymExercise(
                            name: "Press de banca",
                            muscleGroups: [.chest, .triceps],
                            equipment: [.barbell, .dumbbell],
                            instructions: "Acuéstate sobre un banco plano con una barra o un par de mancuernas en las manos. Baja la barra/mancuernas hacia el pecho y luego exhala mientras las levantas hacia arriba hasta que los brazos estén completamente extendidos.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpressbanca.png?alt=media&token=8298ec1b-4abb-4c6e-9237-2ded0bd48343",
                            difficulty: .intermediate,
                            repetitions: 10,
                            sets: 4
                        ),
                        GymExercise(
                            name: "Press militar con barra o mancuernas",
                            muscleGroups: [.shoulders, .triceps],
                            equipment: [.barbell, .dumbbell],
                            instructions: "Sentado o de pie, sostén una barra o mancuernas a la altura de los hombros con las palmas hacia adelante. Exhala mientras empujas la barra/mancuernas hacia arriba, extendiendo los brazos por completo. Inhala y baja controladamente.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpressmilitar.png?alt=media&token=3aceafa5-0df1-4ce3-9517-6ddcd0541e2f",
                            difficulty: .intermediate,
                            repetitions: 8,
                            sets: 3
                        ),
                        GymExercise(
                            name: "Aperturas con mancuernas en banco inclinado",
                            muscleGroups: [.chest],
                            equipment: [.dumbbell],
                            instructions: "Acuéstate sobre un banco inclinado con una mancuerna en cada mano. Extiende los brazos hacia afuera con las palmas mirando hacia adelante. Flexiona los codos ligeramente y baja los brazos hacia los lados hasta que sientas un estiramiento en el pecho. Luego, lleva las mancuernas de nuevo hacia arriba, contrayendo los músculos pectorales.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Faperturamancuernas.png?alt=media&token=86a40865-ee60-491d-9ed1-931f005fe9c3",
                            difficulty: .intermediate,
                            repetitions: 10, // Número de repeticiones
                            sets: 3 // Número de series
                        ),
                        GymExercise(
                            name: "Fondos en paralelas",
                            muscleGroups: [.chest, .triceps],
                            equipment: [.bodyweight],
                            instructions: "Colócate entre dos barras paralelas y súbete para que tus brazos estén completamente extendidos y tus pies no toquen el suelo. Flexiona los codos para bajar tu cuerpo, manteniendo el torso recto, hasta que los hombros estén justo por debajo de los codos. Luego, extiende los codos para volver a la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Ffondoparalelas.png?alt=media&token=27bfdf59-4a7e-43f1-9afb-57a2c8a9f451",
                            difficulty: .intermediate,
                            repetitions: 8, // Número de repeticiones
                            sets: 3 // Número de series
                        ),
                        GymExercise(
                            name: "Extensiones de tríceps en polea alta",
                            muscleGroups: [.triceps],
                            equipment: [.cableMachine],
                            instructions: "Coloca una barra o una cuerda en la polea alta de la máquina. De pie, agarra la barra o la cuerda con ambas manos y estira completamente los brazos frente a ti, con los codos cerca de las orejas. Flexiona los codos para bajar el peso hacia atrás, manteniendo los brazos cerca de la cabeza. Luego, extiende los codos para volver a la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fextensionestriceps.png?alt=media&token=3778cf93-d396-42ad-827d-590415bd1ceb",
                            difficulty: .intermediate,
                            repetitions: 10, // Número de repeticiones
                            sets: 3 // Número de series
                        )
                    ],
                    comments: "Enfócate en la técnica adecuada y utiliza un peso que te permita completar las repeticiones con buena forma."),
                GymTrainingDay(
                    dayOfWeek: .tuesday,
                    muscleGroupTarget: [.back, .biceps],
                    exercises: [
                        GymExercise(
                            name: "Dominadas o Pull-ups",
                            muscleGroups: [.back, .biceps],
                            equipment: [.bodyweight],
                            instructions: "Agarra la barra con las manos separadas a la anchura de los hombros. Cuelga con los brazos completamente extendidos y luego tira de tu cuerpo hacia arriba hasta que tu barbilla pase la barra. Baja lentamente de nuevo a la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fdominadas.png?alt=media&token=1b054ae1-caf8-449a-9093-d04a476e2b98", // La imagen puede ser opcional
                            difficulty: .intermediate,
                            repetitions: 6,
                            sets: 4
                        ),
                        GymExercise(
                            name: "Remo con barra o Remo con mancuerna",
                            muscleGroups: [.back],
                            equipment: [.barbell, .dumbbell],
                            instructions: "Con la espalda recta, flexiona las rodillas y agarra la barra o las mancuernas con las manos separadas al ancho de los hombros. Levanta el peso hacia el torso, manteniendo los codos cerca del cuerpo. Luego, baja controladamente a la posición inicial.",
                            image: nil,
                            difficulty: .intermediate,
                            repetitions: 8,
                            sets: 4
                        ),
                        GymExercise(
                            name: "Peso muerto rumano",
                            muscleGroups: [.back],
                            equipment: [.barbell],
                            instructions: "Con los pies separados al ancho de los hombros, sostén una barra frente a los muslos con las palmas hacia abajo. Manteniendo la espalda recta, baja la barra hacia el suelo, manteniendo las piernas casi rectas. Luego, vuelve a la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fremoconbarra.png?alt=media&token=2c7124c2-6e77-42e4-87e5-2260f57ff890",
                            difficulty: .intermediate,
                            repetitions: 8,
                            sets: 3
                        ),
                        GymExercise(
                            name: "Curl de bíceps con barra recta",
                            muscleGroups: [.biceps],
                            equipment: [.barbell],
                            instructions: "Con los pies separados al ancho de los hombros, sostén una barra con las palmas hacia arriba y las manos separadas al ancho de los hombros. Flexiona los codos para levantar la barra hacia los hombros. Luego, baja controladamente a la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fcurldebiceps.png?alt=media&token=7ab8c9a9-f541-4bd1-8550-87d09ef9068f",
                            difficulty: .intermediate,
                            repetitions: 8,
                            sets: 3
                        ),
                        GymExercise(
                            name: "Curl de martillo con mancuernas",
                            muscleGroups: [.biceps],
                            equipment: [.dumbbell],
                            instructions: "De pie con una mancuerna en cada mano y los brazos a los lados, las palmas mirando hacia los muslos. Flexiona los codos para levantar las mancuernas hacia los hombros. Mantén los antebrazos en posición vertical. Baja controladamente a la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fcurlmartillo.png?alt=media&token=a4b945a8-7499-4848-8898-0b86dfed9bd9",
                            difficulty: .intermediate,
                            repetitions: 10,
                            sets: 3
                        )
                    ],
                    comments: "Realiza cada ejercicio con buena forma y control del movimiento."),
                GymTrainingDay(
                    dayOfWeek: .thursday,
                    muscleGroupTarget: [.legs],
                    exercises: [
                        GymExercise(
                            name: "Sentadillas",
                            muscleGroups: [.legs],
                            equipment: [.barbell],
                            instructions: "Colócate debajo de la barra con los pies separados al ancho de los hombros. Desciende flexionando las rodillas y las caderas hasta que los muslos estén paralelos al suelo. Luego, vuelve a la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fsentadillas.png?alt=media&token=005705a9-8e51-4597-be1a-457b18ee09ba", // La imagen puede ser opcional
                            difficulty: .intermediate,
                            repetitions: 8,
                            sets: 4
                        ),
                        GymExercise(
                            name: "Prensa de piernas",
                            muscleGroups: [.legs],
                            equipment: [.machine],
                            instructions: "Siéntate en la prensa de piernas con los pies en la plataforma y las rodillas dobladas. Empuja la plataforma hacia arriba extendiendo las piernas. Luego, baja la plataforma controladamente hasta que las rodillas estén dobladas nuevamente.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fprensapiernas.png?alt=media&token=9491379b-be57-483d-bb2f-aecf16ee221b",
                            difficulty: .intermediate,
                            repetitions: 8,
                            sets: 4
                        ),
                        GymExercise(
                            name: "Peso muerto convencional",
                            muscleGroups: [.legs, .back],
                            equipment: [.barbell],
                            instructions: "Sujeta una barra con las manos separadas al ancho de los hombros. Mantén la espalda recta y las piernas ligeramente flexionadas. Inclínate hacia adelante desde las caderas mientras mantienes la barra cerca del cuerpo. Levanta la barra hasta que estés de pie completamente, luego baja controladamente hasta el suelo.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpesomuerto.png?alt=media&token=b31df61c-8ae4-4cb6-a008-c160a0ac999a",
                            difficulty: .intermediate,
                            repetitions: 6,
                            sets: 3
                        ),
                        GymExercise(
                            name: "Extensiones de piernas",
                            muscleGroups: [.legs],
                            equipment: [.machine],
                            instructions: "Siéntate en la máquina de extensiones de piernas con las rodillas dobladas y los pies detrás de las almohadillas. Extiende las piernas hacia adelante hasta que estén casi rectas, luego baja controladamente hasta la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fprensapiernas.png?alt=media&token=9491379b-be57-483d-bb2f-aecf16ee221b",
                            difficulty: .intermediate,
                            repetitions: 10,
                            sets: 3
                        ),
                        GymExercise(
                            name: "Curl de piernas acostado",
                            muscleGroups: [.hamstrings],
                            equipment: [.machine],
                            instructions: "Recuéstate boca abajo en la máquina de curl de piernas con las piernas extendidas y los tobillos debajo de las almohadillas. Flexiona las rodillas para levantar la carga hacia las nalgas, luego baja controladamente hasta la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fcurlpierna.png?alt=media&token=51500316-e9a7-46d9-ab54-2fda58faeec5",
                            difficulty: .intermediate,
                            repetitions: 10,
                            sets: 3
                        ),
                        GymExercise(
                            name: "Elevaciones de talones de pie",
                            muscleGroups: [.calves],
                            equipment: [.barbell],
                            instructions: "Coloca una barra sobre los hombros detrás de la espalda, con los pies separados al ancho de los hombros. Levanta los talones lo más alto posible, luego baja controladamente hasta la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Felevacionestalones.png?alt=media&token=85e84725-3c6c-492f-9024-ffad2dcb503c",
                            difficulty: .intermediate,
                            repetitions: 12,
                            sets: 4
                        )
                    ],
                    comments: "Recuerda mantener una técnica adecuada en cada ejercicio y ajusta el peso según tu capacidad y nivel de entrenamiento."
                ),
                GymTrainingDay(
                    dayOfWeek: .friday,
                    muscleGroupTarget: [.chest, .shoulders, .triceps],
                    exercises: [
                        GymExercise(
                            name: "Press de banca inclinado",
                            muscleGroups: [.chest],
                            equipment: [.barbell],
                            instructions: "Acuéstate en un banco inclinado con una barra sobre tu pecho. Baja la barra hacia el pecho controladamente, luego empújala hacia arriba hasta que los brazos estén completamente extendidos.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpressbancainclinado.png?alt=media&token=172281be-b7c4-4471-9c1c-ca772524dd4e", // La imagen puede ser opcional
                            difficulty: .intermediate,
                            repetitions: 8,
                            sets: 4
                        ),
                        GymExercise(
                            name: "Press de hombros con mancuernas",
                            muscleGroups: [.shoulders],
                            equipment: [.dumbbell],
                            instructions: "Siéntate en un banco con respaldo vertical con una mancuerna en cada mano a la altura de los hombros. Empuja las mancuernas hacia arriba hasta que los brazos estén completamente extendidos, luego baja controladamente hasta la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpresshombromancuernas.png?alt=media&token=9d1d38d9-5d47-40a9-bc63-03a00d0c71f3",
                            difficulty: .intermediate,
                            repetitions: 8,
                            sets: 3
                        ),
                        GymExercise(
                            name: "Flexiones de pecho",
                            muscleGroups: [.chest],
                            equipment: [.bodyweight],
                            instructions: "Colócate en posición de tabla con las manos apoyadas en el suelo a la altura de los hombros. Baja el cuerpo flexionando los codos hasta que el pecho toque el suelo, luego empuja hacia arriba hasta que los brazos estén completamente extendidos.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fflexionespecho.png?alt=media&token=0c2828b1-f0b3-4c24-a218-bb5754064317",
                            difficulty: .intermediate,
                            repetitions: 10,
                            sets: 3
                        ),
                        GymExercise(
                            name: "Fondos en máquina de pecho",
                            muscleGroups: [.chest],
                            equipment: [.machine],
                            instructions: "Sujeta las asas de la máquina de pecho con los brazos extendidos. Baja los brazos hacia los lados hasta que sientas un estiramiento en el pecho, luego empuja hacia arriba hasta que los brazos estén completamente extendidos.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Ffondosmaquinapecho.png?alt=media&token=45f4c91d-ac91-46e0-a779-fb20ac086997",
                            difficulty: .intermediate,
                            repetitions: 10,
                            sets: 3
                        ),
                        GymExercise(
                            name: "Extensiones de tríceps con barra EZ",
                            muscleGroups: [.triceps],
                            equipment: [.barbell],
                            instructions: "Acuéstate en un banco plano con una barra EZ sobre la cabeza. Flexiona los codos para bajar la barra hacia la frente, manteniendo los codos en su lugar. Luego, extiende los codos para levantar la barra hacia arriba.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fextensionestricepsbarraez.png?alt=media&token=c4643a03-1915-46a5-bc3e-02b064f323a7",
                            difficulty: .intermediate,
                            repetitions: 8,
                            sets: 3
                        ),
                        GymExercise(
                            name: "Fondos de tríceps en banco",
                            muscleGroups: [.triceps],
                            equipment: [.bodyweight],
                            instructions: "Siéntate en el borde de un banco con las manos apoyadas a los lados del cuerpo. Levanta el cuerpo fuera del banco flexionando los codos, luego baja controladamente hasta la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Ffondotricepsbanco.png?alt=media&token=1a5f049c-ac8e-4dee-9d06-17c469cf20e0",
                            difficulty: .intermediate,
                            repetitions: 10,
                            sets: 3
                        )
                    ],
                    comments: "Asegúrate de mantener una buena técnica en cada ejercicio y ajusta el peso según tu nivel de comodidad y capacidad."
                ),
                GymTrainingDay(
                    dayOfWeek: .saturday,
                    muscleGroupTarget: [.back, .biceps],
                    exercises: [
                        GymExercise(
                            name: "Remo con barra T",
                            muscleGroups: [.back],
                            equipment: [.barbell],
                            instructions: "De pie con los pies separados al ancho de los hombros y la barra frente a ti, inclínate hacia adelante desde la cintura. Sostén la barra con un agarre amplio y extiende los brazos. Luego, levanta la barra hacia el torso, manteniendo los codos cerca del cuerpo.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fremobarrat.png?alt=media&token=85622f40-33eb-4062-b2d3-ace1315a63cf", // La imagen puede ser opcional
                            difficulty: .intermediate,
                            repetitions: 8,
                            sets: 4
                        ),
                        GymExercise(
                            name: "Jalones al pecho con polea alta",
                            muscleGroups: [.back],
                            equipment: [.cableMachine],
                            instructions: "Siéntate en una máquina de polea alta con las rodillas debajo de los cojines acolchados. Agarra la barra con las manos separadas al ancho de los hombros. Tira de la barra hacia abajo hacia el pecho, manteniendo los codos hacia abajo y cerca del cuerpo.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fjalonespechopoleaalta.png?alt=media&token=7513d835-2b81-46ec-b419-a4b4cc293bc6",
                            difficulty: .intermediate,
                            repetitions: 8,
                            sets: 4
                        ),
                        GymExercise(
                            name: "Peso muerto sumo",
                            muscleGroups: [.back, .legs],
                            equipment: [.barbell],
                            instructions: "Colócate con los pies separados más allá del ancho de los hombros y los dedos de los pies ligeramente hacia afuera. Agarra la barra con un agarre amplio y los brazos extendidos. Baja la barra hacia el suelo, manteniendo la espalda recta, luego levántala hacia arriba.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fpesomuertosumo.png?alt=media&token=b5ce7bb6-f216-4bc3-8eb3-dc8a42e2efe3",
                            difficulty: .intermediate,
                            repetitions: 6,
                            sets: 3
                        ),
                        GymExercise(
                            name: "Curl de bíceps con mancuernas en banco inclinado",
                            muscleGroups: [.biceps],
                            equipment: [.dumbbell],
                            instructions: "Siéntate en un banco inclinado con una mancuerna en cada mano y los brazos extendidos. Flexiona los codos para levantar las mancuernas hacia los hombros, manteniendo los codos cerca del cuerpo. Luego, baja controladamente hasta la posición inicial.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fcurlbicepsmancuernas.png?alt=media&token=1386896d-ef19-4b12-bdd2-5f9d188db969",
                            difficulty: .intermediate,
                            repetitions: 8,
                            sets: 3
                        ),
                        GymExercise(
                            name: "Curl de concentración con mancuerna",
                            muscleGroups: [.biceps],
                            equipment: [.dumbbell],
                            instructions: "Siéntate en un banco con las piernas separadas y un brazo apoyado en el muslo. Sujeta una mancuerna con el brazo extendido y el codo apoyado en el interior del muslo. Flexiona el codo para levantar la mancuerna hacia el hombro, luego baja controladamente.",
                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Exercises%2FStregthRoutine%2Fcurlbicepsconcentrado.png?alt=media&token=b58d5432-8027-471d-ba25-aadef4e13a5f",
                            difficulty: .intermediate,
                            repetitions: 10,
                            sets: 3
                        )
                    ],
                    comments: "Recuerda mantener una técnica adecuada en cada ejercicio y ajusta el peso según tu capacidad y nivel de comodidad."
                )
            ],
            restDays: [.wednesday, .sunday],
            goal: .strengthBuilding,
            notes: "Asegúrate de realizar cada ejercicio con la técnica adecuada y escuchar a tu cuerpo."),
        durationInWeeks: 6)
}
