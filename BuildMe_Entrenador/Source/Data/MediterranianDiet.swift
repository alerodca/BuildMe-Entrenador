//
//  MediterranianDiet.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 16/5/24.
//

import Foundation

class MediterranianDiet {
    static let mediterranianDiet = Diet(
        name: "Dieta Mediterránea",
        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FdietaMediterranea.png?alt=media&token=81c6bded-b65d-47c9-a6c7-6f23c842a8f5",
        description: "La dieta mediterránea es un patrón de alimentación tradicional basado en los alimentos consumidos por las poblaciones de los países mediterráneos, como Grecia, Italia y España. Se caracteriza por incluir una amplia variedad de alimentos frescos y minimizar el consumo de alimentos procesados.",
        durationInWeeks: 6,
        days: [
            DietDay(day: .monday,
                    breakfast: Recipe(name: "Tostadas integrales con aguacate y tomate",
                                      ingredients: ["Aguacate", "Tomate", "Pan integral"],
                                      preparationTime: 10,
                                      servings: 1,
                                      image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD1D.png?alt=media&token=87090271-da79-401c-9f3e-836f07a82cd5",
                                      nutritionalValues: NutritionalValues(calories: 300, protein: 8, carbohydrates: 30, fat: 15),
                                      mealType: .breakfast,
                                      tips: "Utiliza aguacates maduros para una textura suave y cremosa. Agrega un toque de limón al aguacate para realzar el sabor. Prueba diferentes variedades de tomate para una variedad de sabores y colores."),
                    lunch: Recipe(name: "Ensalada griega con pollo a la parrilla",
                                  ingredients: ["Lechuga", "Tomate", "Pepino", "Cebolla roja", "Aceitunas", "Queso feta", "Pollo a la parrilla"],
                                  preparationTime: 20,
                                  servings: 1,
                                  image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD1A.png?alt=media&token=46cd1e49-f6c4-4da4-8dec-5bb5f881ed54",
                                  nutritionalValues: NutritionalValues(calories: 400, protein: 25, carbohydrates: 15, fat: 20),
                                  mealType: .lunch,
                                  tips: "Prepara la ensalada con anticipación y guarda los ingredientes por separado para mantener su frescura. Marinar el pollo antes de asarlo para darle más sabor. Agrega hierbas frescas como albahaca o orégano para un toque adicional de sabor."),
                    snack: Recipe(name: "Zanahorias baby con hummus",
                                  ingredients: ["Zanahorias baby", "Hummus"],
                                  preparationTime: 10,
                                  servings: 1,
                                  image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD1M.png?alt=media&token=b5ebcdea-42df-408d-b0e2-25b089a70bed",
                                  nutritionalValues: NutritionalValues(calories: 200, protein: 6, carbohydrates: 25, fat: 10),
                                  mealType: .snack,
                                  tips: "Elige zanahorias frescas y crujientes para la mejor experiencia. Prueba diferentes variedades de hummus, como el clásico, el de remolacha o el de pimiento rojo asado. Si lo prefieres, puedes sustituir las zanahorias por otras verduras crujientes, como pepinos o apio."),
                    dinner: Recipe(name: "Salmón al horno con espárragos y quinoa",
                                   ingredients: ["Salmón", "Espárragos", "Quinoa"],
                                   preparationTime: 30,
                                   servings: 1,
                                   image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD1C.png?alt=media&token=1fb60a62-d4b8-4dea-bc69-3521b565a086",
                                   nutritionalValues: NutritionalValues(calories: 450, protein: 30, carbohydrates: 40, fat: 20),
                                   mealType: .dinner,
                                   tips: "Elige filetes de salmón frescos y de alta calidad. Marinar el salmón con limón, ajo y hierbas frescas antes de hornearlo para un sabor extra. Acompaña el plato con una porción de verduras al vapor para aumentar su contenido nutricional y mantener el equilibrio en la comida."),
                    midMorningSnack: Recipe(name: "Yogur griego con frutas frescas",
                                            ingredients: ["Yogur griego", "Frutas frescas"],
                                            preparationTime: 5,
                                            servings: 1,
                                            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD1MM.png?alt=media&token=0f1b2077-8281-4afb-a17d-245867729c87",
                                            nutritionalValues: NutritionalValues(calories: 150, protein: 10, carbohydrates: 20, fat: 5),
                                            mealType: .midMorningSnack,
                                            tips: "Elige frutas de temporada para una frescura óptima y variedad de sabores. Añade un poco de granola o nueces para un toque crujiente y más nutrientes. Experimenta con diferentes tipos de yogur (natural, con sabor, bajo en grasa) para variaciones en el sabor y la textura."),
                    nutritionalGoals: NutritionalValues(calories: 2000, protein: 100, carbohydrates: 250, fat: 50)),
            DietDay(day: .tuesday,
                    breakfast: Recipe(
                        name: "Tortilla de espinacas y champiñones",
                        ingredients: ["Espinacas", "Champiñones", "Huevos"],
                        preparationTime: 20,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD2D.png?alt=media&token=01701208-0377-48c9-8c8e-2c3d253e0e3c",
                        nutritionalValues: NutritionalValues(calories: 300, protein: 20, carbohydrates: 10, fat: 15),
                        mealType: .breakfast,
                        tips: "Agrega un poco de queso feta desmenuzado para un sabor extra."
                    ),
                    lunch: Recipe(
                        name: "Pasta integral con salsa de tomate, espinacas y gambas",
                        ingredients: ["Pasta integral", "Salsa de tomate", "Espinacas", "Gambas"],
                        preparationTime: 30,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD2A.png?alt=media&token=444ce788-0fef-4cfa-a6f5-ad415c0a686d",
                        nutritionalValues: NutritionalValues(calories: 400, protein: 25, carbohydrates: 50, fat: 10),
                        mealType: .lunch,
                        tips: "Cocina la pasta al dente y añade las espinacas al final para conservar su frescura."
                    ),
                    snack: Recipe(
                        name: "Manzana con mantequilla de almendras",
                        ingredients: ["Manzana", "Mantequilla de almendras"],
                        preparationTime: 5,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD2M.png?alt=media&token=6175fade-4322-4444-a2bf-165670249216",
                        nutritionalValues: NutritionalValues(calories: 150, protein: 2, carbohydrates: 20, fat: 8),
                        mealType: .snack,
                        tips: "Agrega un poco de canela en polvo a la mantequilla de almendras para un sabor adicional."
                    ),
                    dinner: Recipe(
                        name: "Ensalada de atún con garbanzos, tomates cherry y pepino",
                        ingredients: ["Atún en lata", "Garbanzos", "Tomates cherry", "Pepino"],
                        preparationTime: 15,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD2C.png?alt=media&token=a3b74565-9c9f-4ac8-98c8-f57fd3c6380c",
                        nutritionalValues: NutritionalValues(calories: 350, protein: 30, carbohydrates: 25, fat: 10),
                        mealType: .dinner,
                        tips: "Agrega una vinagreta casera de limón y aceite de oliva para un toque fresco."
                    ),
                    midMorningSnack: Recipe(
                        name: "Frutos secos (almendras, nueces)",
                        ingredients: ["Almendras", "Nueces"],
                        preparationTime: 5,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD2MM.png?alt=media&token=60b2dc00-bc81-4462-b86e-7eca076c376b",
                        nutritionalValues: NutritionalValues(calories: 200, protein: 5, carbohydrates: 10, fat: 15),
                        mealType: .midMorningSnack,
                        tips: "Elige frutos secos sin sal y sin tostar para un bocadillo más saludable."
                    ),
                    nutritionalGoals: NutritionalValues(calories: 2000, protein: 100, carbohydrates: 250, fat: 50)),
            DietDay(day: .wednesday,
                    breakfast: Recipe(
                        name: "Batido de frutas",
                        ingredients: ["Plátano", "Fresas", "Espinacas", "Leche de almendras"],
                        preparationTime: 10,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD3D.png?alt=media&token=f82acd0b-dee1-4bee-8859-5e7015d41fce",
                        nutritionalValues: NutritionalValues(calories: 250, protein: 5, carbohydrates: 40, fat: 8),
                        mealType: .breakfast,
                        tips: "Agrega un poco de miel o edulcorante si prefieres un sabor más dulce."),
                    lunch: Recipe(
                        name: "Lentejas estofadas con verduras y arroz integral",
                        ingredients: ["Lentejas", "Verduras mixtas", "Arroz integral"],
                        preparationTime: 40,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD3A.png?alt=media&token=7efa0e09-74c7-4501-bae7-26990430c4ef",
                        nutritionalValues: NutritionalValues(calories: 350, protein: 15, carbohydrates: 60, fat: 5),
                        mealType: .lunch,
                        tips: "Agrega un poco de comino en polvo y tomillo a las lentejas para un sabor más profundo."),
                    snack: Recipe(
                        name: "Puñado de uvas",
                        ingredients: ["Uvas"],
                        preparationTime: 2,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD3M.png?alt=media&token=91325a9c-faae-4e87-af3f-cc9d9ca0b603",
                        nutritionalValues: NutritionalValues(calories: 50, protein: 1, carbohydrates: 15, fat: 0),
                        mealType: .snack,
                        tips: "Refrigera las uvas antes de comerlas para una merienda refrescante."),
                    dinner: Recipe(
                        name: "Pechuga de pollo al horno con patatas asadas y brócoli al vapor",
                        ingredients: ["Pechuga de pollo", "Patatas", "Brócoli"],
                        preparationTime: 45,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD3C.png?alt=media&token=f93df0bd-e129-450e-a282-0e571c9a1111",
                        nutritionalValues: NutritionalValues(calories: 400, protein: 35, carbohydrates: 30, fat: 12),
                        mealType: .dinner,
                        tips: "Marina la pechuga de pollo con limón y hierbas frescas antes de hornearla para un sabor delicioso."),
                    midMorningSnack: Recipe(
                        name: "Rodajas de pepino con queso cottage",
                        ingredients: ["Pepino", "Queso cottage"],
                        preparationTime: 5,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD3MM.png?alt=media&token=5f7ca12b-5888-4b3c-b985-44b6ba7f54b0",
                        nutritionalValues: NutritionalValues(calories: 150, protein: 10, carbohydrates: 5, fat: 7),
                        mealType: .midMorningSnack,
                        tips: "Espolvorea un poco de pimienta negra molida sobre el queso cottage para un sabor adicional."),
                    nutritionalGoals: NutritionalValues(calories: 2000, protein: 100, carbohydrates: 250, fat: 50)),
            DietDay(day: .thursday,
                    breakfast: Recipe(
                        name: "Avena cocida con frutas secas y miel",
                        ingredients: ["Avena", "Frutas secas", "Miel"],
                        preparationTime: 15,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD4D.png?alt=media&token=19ce5fcc-8007-4b14-b642-cc69c29821e9",
                        nutritionalValues: NutritionalValues(calories: 300, protein: 8, carbohydrates: 50, fat: 10),
                        mealType: .breakfast,
                        tips: "Agrega un poco de canela en polvo para un toque adicional de sabor."),
                    lunch: Recipe(
                        name: "Pizza casera con base de trigo integral, tomate, mozzarella, espinacas y champiñones",
                        ingredients: ["Base de trigo integral", "Tomate", "Mozzarella", "Espinacas", "Champiñones"],
                        preparationTime: 30,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD4A.png?alt=media&token=15353c67-bc70-4417-98ab-e81405dacdea",
                        nutritionalValues: NutritionalValues(calories: 450, protein: 20, carbohydrates: 40, fat: 25),
                        mealType: .lunch,
                        tips: "Agrega hierbas frescas como albahaca o orégano para realzar el sabor de la pizza."),
                    snack: Recipe(
                        name: "Tazón de fresas",
                        ingredients: ["Fresas"],
                        preparationTime: 2,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD4M.png?alt=media&token=ca36011c-667c-4aab-9592-d888ba1b8522",
                        nutritionalValues: NutritionalValues(calories: 50, protein: 1, carbohydrates: 10, fat: 0.5),
                        mealType: .snack,
                        tips: "Acompaña las fresas con un poco de yogur griego para un equilibrio de proteínas y carbohidratos."),
                    dinner: Recipe(
                        name: "Ensalada de quinoa con aguacate, tomate, maíz y aderezo de limón y cilantro",
                        ingredients: ["Quinoa", "Aguacate", "Tomate", "Maíz", "Limón", "Cilantro"],
                        preparationTime: 20,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD4C.png?alt=media&token=d4b6ceb5-5ee3-4d43-b6ea-35eda6cdd77c",
                        nutritionalValues: NutritionalValues(calories: 350, protein: 10, carbohydrates: 50, fat: 15),
                        mealType: .dinner,
                        tips: "Cocina la quinoa en caldo de verduras para agregar más sabor. Agrega un poco de jalapeño picado para un toque picante."),
                    midMorningSnack: Recipe(
                        name: "Palitos de apio con crema de cacahuate",
                        ingredients: ["Apio", "Crema de cacahuate"],
                        preparationTime: 5,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD4MM.png?alt=media&token=ce90773f-5cbf-4ae7-a802-020ba3dd27fc",
                        nutritionalValues: NutritionalValues(calories: 200, protein: 6, carbohydrates: 10, fat: 15),
                        mealType: .midMorningSnack,
                        tips: "Utiliza crema de cacahuate natural sin azúcares añadidos para una opción más saludable."),
                    nutritionalGoals: NutritionalValues(calories: 2000, protein: 100, carbohydrates: 250, fat: 50)),
            DietDay(day: .friday,
                    breakfast: Recipe(
                        name: "Tostadas de pan integral con crema de aguacate y huevo pochado",
                        ingredients: ["Pan integral", "Aguacate", "Huevo"],
                        preparationTime: 15,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD5D.png?alt=media&token=c408a9db-2a7d-457f-abfb-913d9b24c7ba",
                        nutritionalValues: NutritionalValues(calories: 350, protein: 15, carbohydrates: 30, fat: 20),
                        mealType: .breakfast,
                        tips: "Añade una pizca de pimentón ahumado a la crema de aguacate para un sabor extra."),
                    lunch: Recipe(
                        name: "Wrap de pollo con lechuga, tomate, pepino y salsa de yogur",
                        ingredients: ["Wrap de trigo integral", "Pollo", "Lechuga", "Tomate", "Pepino", "Salsa de yogur"],
                        preparationTime: 20,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD5A.png?alt=media&token=ad46d56a-053d-4e5c-8beb-172cae9832f5",
                        nutritionalValues: NutritionalValues(calories: 400, protein: 25, carbohydrates: 35, fat: 15),
                        mealType: .lunch,
                        tips: "Utiliza pechuga de pollo a la parrilla para una opción más saludable."),
                    snack: Recipe(
                        name: "Yogur griego con miel y nueces",
                        ingredients: ["Yogur griego", "Miel", "Nueces"],
                        preparationTime: 5,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD5M.png?alt=media&token=b2d697f3-cd30-45e9-97ff-3e23dd14e292",
                        nutritionalValues: NutritionalValues(calories: 250, protein: 15, carbohydrates: 20, fat: 12),
                        mealType: .snack,
                        tips: "Añade un poco de canela en polvo al yogur para un sabor adicional."),
                    dinner: Recipe(
                        name: "Filete de pescado a la plancha con ensalada de espinacas, fresas y nueces",
                        ingredients: ["Filete de pescado", "Espinacas", "Fresas", "Nueces"],
                        preparationTime: 30,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD5C.png?alt=media&token=c3fd24de-0d88-48fb-99fd-d822e37c016f",
                        nutritionalValues: NutritionalValues(calories: 350, protein: 30, carbohydrates: 20, fat: 15),
                        mealType: .dinner,
                        tips: "Adereza la ensalada con una vinagreta balsámica para un sabor delicioso."),
                    midMorningSnack: Recipe(
                        name: "Puñado de almendras",
                        ingredients: ["Almendras"],
                        preparationTime: 2,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD5MM.png?alt=media&token=932979e4-f7c4-4f3c-bd83-e915a6a21488",
                        nutritionalValues: NutritionalValues(calories: 200, protein: 7, carbohydrates: 5, fat: 18),
                        mealType: .midMorningSnack,
                        tips: "Elige almendras crudas y sin sal para una opción más saludable."),
                    nutritionalGoals: NutritionalValues(calories: 2000, protein: 100, carbohydrates: 250, fat: 50)),
            DietDay(day: .saturday,
                    breakfast: Recipe(
                        name: "Tortitas de avena con plátano y nueces",
                        ingredients: ["Avena", "Plátano", "Nueces"],
                        preparationTime: 20,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD6D.png?alt=media&token=8bf57583-16aa-4fcb-81bd-318c69d2c708",
                        nutritionalValues: NutritionalValues(calories: 350, protein: 10, carbohydrates: 40, fat: 15),
                        mealType: .breakfast,
                        tips: "Agrega un poco de canela en polvo a la mezcla de tortitas para un sabor más delicioso."),
                    lunch: Recipe(
                        name: "Paella de mariscos con arroz integral",
                        ingredients: ["Mariscos mixtos", "Arroz integral", "Caldo de pescado", "Tomate", "Pimiento", "Azafrán"],
                        preparationTime: 45,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD6A.png?alt=media&token=c4ec2f0b-097f-4578-9b05-c76528ff10e7",
                        nutritionalValues: NutritionalValues(calories: 500, protein: 30, carbohydrates: 60, fat: 15),
                        mealType: .lunch,
                        tips: "Utiliza mariscos frescos para un mejor sabor y textura en la paella."),
                    snack: Recipe(
                        name: "Batido de mango y espinacas",
                        ingredients: ["Mango", "Espinacas", "Leche de almendras"],
                        preparationTime: 10,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD6M.png?alt=media&token=5db384cd-d8ec-4811-b9da-f0181a9aad66",
                        nutritionalValues: NutritionalValues(calories: 200, protein: 5, carbohydrates: 35, fat: 5),
                        mealType: .snack,
                        tips: "Agrega un poco de jengibre fresco rallado al batido para un toque picante."),
                    dinner: Recipe(
                        name: "Ensalada caprese con tomate, mozzarella fresca y albahaca, acompañada de pan integral",
                        ingredients: ["Tomate", "Mozzarella fresca", "Albahaca", "Pan integral"],
                        preparationTime: 15,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD6C.png?alt=media&token=841372d6-9fe4-45a9-8093-a9ef81d0d022",
                        nutritionalValues: NutritionalValues(calories: 400, protein: 20, carbohydrates: 30, fat: 20),
                        mealType: .dinner,
                        tips: "Utiliza tomates maduros y mozzarella de buena calidad para una ensalada más sabrosa."),
                    midMorningSnack: Recipe(
                        name: "Rodajas de piña",
                        ingredients: ["Piña"],
                        preparationTime: 5,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD6MM.png?alt=media&token=605cec07-2199-49ad-a003-42cf8b63a06c",
                        nutritionalValues: NutritionalValues(calories: 100, protein: 1, carbohydrates: 25, fat: 0.5),
                        mealType: .midMorningSnack,
                        tips: "Sirve las rodajas de piña bien frías para un bocado refrescante."),
                    nutritionalGoals: NutritionalValues(calories: 2000, protein: 100, carbohydrates: 250, fat: 50)),
            DietDay(day: .sunday,
                    breakfast: Recipe(
                        name: "Tostadas de pan integral con tomate rallado y jamón serrano",
                        ingredients: ["Pan integral", "Tomate", "Jamón serrano"],
                        preparationTime: 10,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD7D.png?alt=media&token=b8bd8ed6-b35b-4808-9351-02744e63bfa5",
                        nutritionalValues: NutritionalValues(calories: 300, protein: 15, carbohydrates: 25, fat: 12),
                        mealType: .breakfast,
                        tips: "Tuesta ligeramente el pan para obtener una textura crujiente."),
                    lunch: Recipe(
                        name: "Estofado de garbanzos con espinacas y calabaza",
                        ingredients: ["Garbanzos", "Espinacas", "Calabaza", "Cebolla", "Ajo", "Caldo de verduras"],
                        preparationTime: 40,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD7A.png?alt=media&token=2694851f-e557-4b45-931a-6a2697be6549",
                        nutritionalValues: NutritionalValues(calories: 400, protein: 15, carbohydrates: 50, fat: 10),
                        mealType: .lunch,
                        tips: "Agrega un poco de pimentón ahumado para darle más sabor al estofado."),
                    snack: Recipe(
                        name: "Rodajas de manzana con crema de almendras",
                        ingredients: ["Manzana", "Crema de almendras"],
                        preparationTime: 5,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD7M.png?alt=media&token=33d9b2b8-a477-490a-b49b-5492fc84fbfb",
                        nutritionalValues: NutritionalValues(calories: 150, protein: 3, carbohydrates: 20, fat: 8),
                        mealType: .snack,
                        tips: "Espolvorea un poco de canela en polvo sobre las rodajas de manzana para un sabor adicional."),
                    dinner: Recipe(
                        name: "Sopa de verduras con queso parmesano rallado y pan integral",
                        ingredients: ["Verduras variadas", "Queso parmesano rallado", "Pan integral"],
                        preparationTime: 30,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD7C.png?alt=media&token=44a67e54-5ede-4d1b-8003-9dfc4121c305",
                        nutritionalValues: NutritionalValues(calories: 250, protein: 10, carbohydrates: 30, fat: 8),
                        mealType: .dinner,
                        tips: "Agrega un poco de tomillo fresco a la sopa para un aroma delicioso."),
                    midMorningSnack: Recipe(
                        name: "Puñado de nueces",
                        ingredients: ["Nueces"],
                        preparationTime: 2,
                        servings: 1,
                        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD7MM.png?alt=media&token=abe72846-9326-405b-a78e-7672bfc8998c",
                        nutritionalValues: NutritionalValues(calories: 200, protein: 5, carbohydrates: 4, fat: 18),
                        mealType: .midMorningSnack,
                        tips: "Opta por nueces crudas y sin sal para una opción más saludable."),
                    nutritionalGoals: NutritionalValues(calories: 2000, protein: 100, carbohydrates: 250, fat: 50)),
        ]
    )
}

/*uploadDietToFirebase(diet: MediterranianDiet.mediterranianDiet)
 private func uploadDietToFirebase(diet: Diet) {
 // Referencia a la base de datos de Firebase
 let ref = Database.database().reference()
 
 // Convertir el objeto Training a un diccionario
 let dietData = diet.toDictionary()
 
 // Generar una nueva clave única para el objeto Training
 let newTrainingRef = ref.child(Constants.dietChild).child(Constants.mediterranianDietChild)
 
 // Subir el objeto Training al nodo "trainings" en Firebase Database
 newTrainingRef.setValue(dietData) { error, _ in
     if let error = error {
         print("Error al subir el objeto Dieta a Firebase Database: \(error.localizedDescription)")
     } else {
         print("Objeto Dieta subido exitosamente a Firebase Database")
     }
 }
}*/
