//
//  MediterranianDiet.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 2/5/24.
//

import Foundation

class MediterranianDiet {
    static let lunes = DailyMealPlan(
        dayOfWeek: .monday,
        breakfast: Recipe(
            name: "Tostadas Integrales con Aguacate y Tomate",
            ingredients: ["Tostadas integrales", "Aguacate", "Tomate"],
            instructions: "1. Tuesta las rebanadas de pan integral.\n2. Machaca el aguacate y úntalo sobre las tostadas.\n3. Corta los tomates en rodajas finas y colócalos sobre el aguacate.\n4. ¡Disfruta de tus tostadas integrales con aguacate y tomate!",
            preparationTime: 10,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 200, proteins: 5, carbohydrates: 30, fats: 10),
            tips: ["Puedes añadir un poco de sal y pimienta al aguacate para darle más sabor.", "Acompaña las tostadas con una taza de té o café para completar tu desayuno."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD1D.png?alt=media&token=87090271-da79-401c-9f3e-836f07a82cd5",
            mealType: .breakfast),
        brunch: Recipe(
            name: "Yogur Griego con Frutas Frescas",
            ingredients: ["Yogur griego", "Frutas frescas (como fresas, arándanos, plátano, etc.)"],
            instructions: "1. Vierte el yogur griego en un tazón.\n2. Lava y corta las frutas frescas en trozos.\n3. Agrega las frutas al yogur.\n4. ¡Disfruta de tu yogur griego con frutas frescas!",
            preparationTime: 5,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 150, proteins: 10, carbohydrates: 20, fats: 2),
            tips: ["Puedes endulzar el yogur con miel o sirope de arce si lo prefieres más dulce.", "Añade un toque de granola o frutos secos para un extra de textura y sabor."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD1MM.png?alt=media&token=0f1b2077-8281-4afb-a17d-245867729c87",
            mealType: .brunch),
        lunch: Recipe(
            name: "Ensalada Griega con Pollo a la Parrilla",
            ingredients: ["Lechuga", "Tomate", "Pepino", "Aceitunas", "Cebolla roja", "Queso feta", "Pechuga de pollo", "Aceite de oliva", "Zumo de limón", "Orégano", "Sal", "Pimienta"],
            instructions: """
                                1. Lava y corta la lechuga, el tomate, el pepino, la cebolla roja y el queso feta en trozos.
                                2. En una sartén o parrilla, cocina la pechuga de pollo previamente sazonada con sal, pimienta y orégano hasta que esté bien cocida.
                                3. Corta el pollo en tiras o trozos.
                                4. En un tazón grande, mezcla la lechuga, el tomate, el pepino, la cebolla roja, las aceitunas y el queso feta.
                                5. Agrega las tiras o trozos de pollo a la ensalada.
                                6. Aliña la ensalada con aceite de oliva, zumo de limón, orégano, sal y pimienta al gusto.
                                7. Mezcla bien y sirve.
                                """,
            preparationTime: 20,
            servings: 4,
            nutritionalValue: NutritionalValue(calories: 350, proteins: 25, carbohydrates: 15, fats: 20),
            tips: ["Puedes añadir más verduras a la ensalada, como pimientos o aguacate, según tu preferencia.", "Para una versión vegetariana, puedes omitir el pollo y aumentar la cantidad de queso feta y aceitunas para obtener proteínas y grasas saludables."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD1A.png?alt=media&token=46cd1e49-f6c4-4da4-8dec-5bb5f881ed54",
            mealType: .lunch),
        afternoonSnack: Recipe(
            name: "Zanahorias Baby con Hummus",
            ingredients: ["Zanahorias baby", "Hummus"],
            instructions: """
                                1. Lava las zanahorias baby y sécalas con papel de cocina.
                                2. Sirve el hummus en un plato pequeño o recipiente.
                                3. Coloca las zanahorias baby alrededor del hummus.
                                4. ¡Sumerge las zanahorias baby en el hummus y disfruta de tu merienda!
                                """,
            preparationTime: 5,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 120, proteins: 4, carbohydrates: 15, fats: 6),
            tips: ["Puedes agregar un toque de limón o comino al hummus para variar el sabor.", "Prueba también con otras verduras, como apio o pepino, para acompañar el hummus."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD1M.png?alt=media&token=b5ebcdea-42df-408d-b0e2-25b089a70bed",
            mealType: .snack),
        dinner: Recipe(
            name: "Salmón al Horno con Espárragos y Quinoa",
            ingredients: ["Filete de salmón", "Espárragos", "Quinoa", "Aceite de oliva", "Sal", "Pimienta", "Jugo de limón", "Ajo picado"],
            instructions: """
                                1. Precalienta el horno a 200°C (390°F).
                                2. Lava la quinoa y cuécela según las instrucciones del paquete.
                                3. Mientras tanto, lava y corta los extremos duros de los espárragos.
                                4. En una bandeja para hornear, coloca el filete de salmón y los espárragos.
                                5. Rocía con aceite de oliva y sazona con sal, pimienta, jugo de limón y ajo picado al gusto.
                                6. Hornea en el horno precalentado durante 12-15 minutos, o hasta que el salmón esté cocido y los espárragos estén tiernos.
                                7. Sirve el salmón y los espárragos sobre un lecho de quinoa cocida.
                                8. ¡Disfruta de tu cena saludable y deliciosa!
                                """,
            preparationTime: 30,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 400, proteins: 30, carbohydrates: 25, fats: 18),
            tips: ["Puedes agregar hierbas frescas, como eneldo o perejil, para dar más sabor al salmón.", "Si prefieres una opción sin gluten, puedes sustituir la quinoa por arroz integral o patatas asadas."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD1C.png?alt=media&token=1fb60a62-d4b8-4dea-bc69-3521b565a086",
            mealType: .dinner),
        dailyNutritionGoals: NutritionGoals(
            totalCalories: 2000,
            proteinGrams: 75,
            carbohydrateGrams: 250,
            fatGrams: 67,
            fiberGrams: 30),
        notes: "Día siguiendo la Dieta Mediterránea\n\nDesayuno: Comenzamos el día con un desayuno lleno de energía y nutrientes. Las tostadas integrales proporcionan fibra y carbohidratos complejos, mientras que el aguacate aporta grasas saludables y el tomate añade un toque refrescante y antioxidante.\n\nMedia mañana: Para mantenernos saciados y nutridos hasta el almuerzo, optamos por un yogur griego acompañado de frutas frescas. El yogur aporta proteínas y calcio, mientras que las frutas nos ofrecen vitaminas, minerales y antioxidantes.\n\nAlmuerzo: En el almuerzo, nos deleitamos con una ensalada griega abundante, que incluye vegetales frescos como pepino, tomate y pimiento, junto con aceitunas y queso feta. Añadimos proteínas magras con el pollo a la parrilla, lo que nos proporciona una comida equilibrada y satisfactoria.\n\nMerienda: Para una merienda saludable y deliciosa, disfrutamos de zanahorias baby crujientes acompañadas de hummus. Esta combinación nos ofrece fibra, vitaminas y minerales, junto con proteínas y grasas saludables provenientes del hummus.\n\nCena: Terminamos el día con una cena nutritiva y reconfortante. El salmón al horno nos brinda ácidos grasos omega-3 beneficiosos para la salud del corazón, mientras que los espárragos y la quinoa complementan la comida con fibra, vitaminas y minerales. Esta cena ligera pero satisfactoria nos ayuda a mantenernos saludables y satisfechos hasta el próximo día.\n\nSiguiendo este plan de alimentación, disfrutamos de una variedad de alimentos frescos y nutritivos que caracterizan a la dieta mediterránea, promoviendo así una buena salud y bienestar a largo plazo.",
        nutritionalValues: NutritionalValues(
            totalCalories: 1220,
            proteinGrams: 74,
            carbohydrateGrams: 105,
            fatGrams: 56)
    )
    static let martes = DailyMealPlan(
        dayOfWeek: .tuesday,
        breakfast: Recipe(
            name: "Tortilla de Espinacas y Champiñones",
            ingredients: ["Espinacas", "Champiñones", "Huevos", "Aceite de oliva", "Sal", "Pimienta"],
            instructions: """
            1. Lava y corta las espinacas y los champiñones en trozos.
            2. En una sartén, calienta un poco de aceite de oliva.
            3. Saltea las espinacas y los champiñones hasta que estén tiernos.
            4. Bate los huevos y añade sal y pimienta al gusto.
            5. Vierte los huevos batidos sobre las espinacas y champiñones.
            6. Cocina a fuego medio hasta que la tortilla esté cuajada por ambos lados.
            7. Sirve caliente y ¡disfruta tu tortilla de espinacas y champiñones!
            """,
            preparationTime: 20,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 250, proteins: 15, carbohydrates: 10, fats: 15),
            tips: ["Puedes agregar queso rallado a la tortilla para un extra de sabor.", "Acompaña con una ensalada fresca para completar tu desayuno."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD2D.png?alt=media&token=01701208-0377-48c9-8c8e-2c3d253e0e3c",
            mealType: .breakfast
        ),
        brunch: Recipe(
            name: "Frutos Secos (Almendras, Nueces)",
            ingredients: ["Almendras", "Nueces"],
            instructions: "Simplemente toma un puñado de almendras y nueces como snack.",
            preparationTime: 2,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 200, proteins: 5, carbohydrates: 8, fats: 18),
            tips: ["Opta por frutos secos naturales y sin sal añadida para una opción más saludable.", "Combina con una pieza de fruta fresca para un snack equilibrado."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD2MM.png?alt=media&token=60b2dc00-bc81-4462-b86e-7eca076c376b",
            mealType: .brunch
        ),
        lunch: Recipe(
            name: "Pasta Integral con Salsa de Tomate, Espinacas y Gambas",
            ingredients: ["Pasta integral", "Tomate triturado", "Espinacas", "Gambas", "Ajo", "Cebolla", "Aceite de oliva", "Sal", "Pimienta", "Orégano"],
            instructions: """
            1. Cocina la pasta integral en agua hirviendo con sal según las instrucciones del paquete.
            2. Mientras tanto, en una sartén grande, saltea el ajo y la cebolla en aceite de oliva.
            3. Agrega las gambas y cocina hasta que estén rosadas.
            4. Añade el tomate triturado, las espinacas, sal, pimienta y orégano al gusto.
            5. Cocina a fuego medio-bajo durante unos minutos para que los sabores se mezclen.
            6. Sirve la salsa sobre la pasta cocida y ¡disfruta de tu comida!
            """,
            preparationTime: 30,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 400, proteins: 20, carbohydrates: 50, fats: 10),
            tips: ["Puedes agregar otras verduras como pimiento o champiñones a la salsa para aumentar su contenido nutricional.", "Decora con queso parmesano rallado antes de servir para un toque extra de sabor."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD2A.png?alt=media&token=444ce788-0fef-4cfa-a6f5-ad415c0a686d",
            mealType: .lunch
        ),
        afternoonSnack: Recipe(
            name: "Manzana con Mantequilla de Almendras",
            ingredients: ["Manzana", "Mantequilla de almendras"],
            instructions: "Simplemente corta la manzana en rodajas y úntalas con mantequilla de almendras.",
            preparationTime: 5,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 150, proteins: 3, carbohydrates: 20, fats: 8),
            tips: ["Opta por mantequilla de almendras sin azúcares añadidos para una opción más saludable.", "Puedes espolvorear un poco de canela sobre las rodajas de manzana para un toque extra de sabor."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD2M.png?alt=media&token=6175fade-4322-4444-a2bf-165670249216",
            mealType: .snack
        ),
        dinner: Recipe(
            name: "Ensalada de Atún con Garbanzos, Tomates Cherry y Pepino",
            ingredients: ["Atún enlatado", "Garbanzos cocidos", "Tomates cherry", "Pepino", "Cebolla roja", "Aceitunas", "Aceite de oliva", "Vinagre balsámico", "Sal", "Pimienta", "Orégano"],
            instructions: """
            1. En un tazón grande, mezcla el atún escurrido, los garbanzos cocidos, los tomates cherry cortados por la mitad, el pepino en rodajas finas, la cebolla roja en rodajas finas y las aceitunas.
            2. Aliña la ensalada con aceite de oliva, vinagre balsámico, sal, pimienta y orégano al gusto.
            3. Mezcla bien todos los ingredientes y ¡disfruta de tu ensalada nutritiva!
            """,
            preparationTime: 15,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 300, proteins: 25, carbohydrates: 20, fats: 12),
            tips: ["Puedes agregar hojas de lechuga o espinacas frescas a la ensalada para aumentar su contenido de fibra y vitaminas.", "Acompaña con pan integral tostado para una comida más completa y saciante."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD2C.png?alt=media&token=a3b74565-9c9f-4ac8-98c8-f57fd3c6380c",
            mealType: .dinner
        ),
        dailyNutritionGoals: NutritionGoals(
            totalCalories: 2000,
            proteinGrams: 75,
            carbohydrateGrams: 250,
            fatGrams: 67,
            fiberGrams: 30
        ),
        notes: "Día siguiendo la Dieta Mediterránea\n\nDesayuno: Inicia tu día con una tortilla de espinacas y champiñones rica en proteínas y fibra.\n\nMedia mañana: Opta por un snack saludable de frutos secos como almendras y nueces para mantener tu energía.\n\nAlmuerzo: Disfruta de una deliciosa pasta integral con salsa de tomate, espinacas y gambas, una comida nutritiva y satisfactoria.\n\nMerienda: Una manzana con mantequilla de almendras es la elección perfecta para una merienda equilibrada y sabrosa.\n\nCena: Cierra el día con una ensalada refrescante de atún con garbanzos, tomates cherry y pepino, una opción ligera pero llena de nutrientes.",
        nutritionalValues: NutritionalValues(
            totalCalories: 1300,
            proteinGrams: 68,
            carbohydrateGrams: 78,
            fatGrams: 55
        )
    )
    static let miercoles = DailyMealPlan(
        dayOfWeek: .wednesday,
        breakfast: Recipe(
            name: "Batido de Frutas",
            ingredients: ["Plátano", "Fresas", "Espinacas", "Leche de almendras"],
            instructions: """
            1. Lava y corta las fresas y el plátano en trozos.
            2. En una licuadora, coloca las fresas, el plátano, las espinacas y la leche de almendras.
            3. Mezcla todo hasta obtener una consistencia suave y homogénea.
            4. Sirve en un vaso y ¡disfruta tu batido de frutas!
            """,
            preparationTime: 5,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 200, proteins: 5, carbohydrates: 30, fats: 8),
            tips: ["Puedes añadir una cucharada de miel o sirope de agave si prefieres un batido más dulce.", "Añade un puñado de hielo si deseas una textura más fresca y espesa."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD3D.png?alt=media&token=f82acd0b-dee1-4bee-8859-5e7015d41fce",
            mealType: .breakfast
        ),
        brunch: Recipe(
            name: "Rodajas de Pepino con Queso Cottage",
            ingredients: ["Pepino", "Queso cottage"],
            instructions: "Corta el pepino en rodajas y sírvelas con queso cottage.",
            preparationTime: 5,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 100, proteins: 8, carbohydrates: 5, fats: 4),
            tips: ["Puedes sazonar el queso cottage con un poco de pimienta negra molida para darle más sabor.", "Decora con un poco de eneldo fresco si lo deseas."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD3MM.png?alt=media&token=5f7ca12b-5888-4b3c-b985-44b6ba7f54b0",
            mealType: .brunch
        ),
        lunch: Recipe(
            name: "Lentejas Estofadas con Verduras y Arroz Integral",
            ingredients: ["Lentejas", "Zanahoria", "Cebolla", "Pimiento", "Tomate", "Ajo", "Comino", "Pimentón", "Caldo de verduras", "Arroz integral"],
            instructions: """
            1. En una olla grande, saltea la cebolla, el ajo, la zanahoria y el pimiento hasta que estén tiernos.
            2. Agrega el tomate picado y cocina unos minutos más.
            3. Añade las lentejas, el comino, el pimentón y el caldo de verduras.
            4. Cocina a fuego lento hasta que las lentejas estén tiernas.
            5. Mientras tanto, cocina el arroz integral según las instrucciones del paquete.
            6. Sirve las lentejas estofadas sobre una porción de arroz integral.
            7. ¡Disfruta de este plato reconfortante y nutritivo!
            """,
            preparationTime: 40,
            servings: 4,
            nutritionalValue: NutritionalValue(calories: 350, proteins: 18, carbohydrates: 60, fats: 5),
            tips: ["Puedes añadir otras verduras como apio o calabacín a las lentejas para aumentar su contenido nutricional.", "Acompaña con una ensalada fresca para completar la comida."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD3A.png?alt=media&token=7efa0e09-74c7-4501-bae7-26990430c4ef",
            mealType: .lunch
        ),
        afternoonSnack: Recipe(
            name: "Puñado de Uvas",
            ingredients: ["Uvas"],
            instructions: "Simplemente toma un puñado de uvas frescas como snack.",
            preparationTime: 2,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 50, proteins: 1, carbohydrates: 10, fats: 0),
            tips: ["Opta por uvas frescas y maduras para disfrutar de su máximo sabor y dulzura.", "Combina con un puñado de frutos secos para un snack más saciante y equilibrado."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD3M.png?alt=media&token=91325a9c-faae-4e87-af3f-cc9d9ca0b603",
            mealType: .snack
        ),
        dinner: Recipe(
            name: "Pechuga de Pollo al Horno con Patatas Asadas y Brócoli al Vapor",
            ingredients: ["Pechuga de pollo", "Patatas", "Brócoli", "Aceite de oliva", "Sal", "Pimienta", "Ajo"],
            instructions: """
            1. Precalienta el horno a 200°C (390°F).
            2. Corta las patatas en rodajas y colócalas en una bandeja para hornear. Rocía con aceite de oliva, sal, pimienta y ajo picado al gusto.
            3. Hornea las patatas durante 20-25 minutos o hasta que estén doradas y tiernas.
            4. Mientras tanto, sazona las pechugas de pollo con sal y pimienta al gusto y hornéalas durante 25-30 minutos, o hasta que estén cocidas.
            5. Mientras se cocinan las patatas y el pollo, cocina el brócoli al vapor durante unos minutos hasta que esté tierno pero aún crujiente.
            6. Sirve la pechuga de pollo con las patatas asadas y el brócoli al vapor.
            7. ¡Disfruta de esta cena saludable y deliciosa!
            """,
            preparationTime: 45,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 400, proteins: 35, carbohydrates: 30, fats: 15),
            tips: ["Añade hierbas frescas como romero o tomillo a las patatas antes de hornearlas para darles más sabor.", "Exprime un poco de limón sobre el brócoli al servirlo para realzar su sabor fresco."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD3C.png?alt=media&token=f93df0bd-e129-450e-a282-0e571c9a1111",
            mealType: .dinner
        ),
        dailyNutritionGoals: NutritionGoals(
            totalCalories: 2000,
            proteinGrams: 75,
            carbohydrateGrams: 250,
            fatGrams: 67,
            fiberGrams: 30
        ),
        notes: "Día siguiendo la Dieta Mediterránea\n\nDesayuno: Empieza tu día con un batido de frutas rico en vitaminas y antioxidantes.\n\nMedia mañana: Recarga energías con unas rodajas de pepino y queso cottage, una combinación ligera pero nutritiva.\n\nAlmuerzo: Disfruta de unas reconfortantes lentejas estofadas con verduras y arroz integral, una comida completa y equilibrada.\n\nMerienda: Las uvas son una opción refrescante y dulce para saciar el hambre entre comidas.\n\nCena: Termina el día con una deliciosa pechuga de pollo al horno acompañada de patatas asadas y brócoli al vapor, una cena satisfactoria y llena de proteínas y vegetales.",
        nutritionalValues: NutritionalValues(
            totalCalories: 1150,
            proteinGrams: 65,
            carbohydrateGrams: 125,
            fatGrams: 35
        )
    )
    static let jueves = DailyMealPlan(
        dayOfWeek: .thursday,
        breakfast: Recipe(
            name: "Avena Cocida con Frutas Secas y Miel",
            ingredients: ["Avena", "Frutas secas (como pasas, nueces, almendras)", "Miel"],
            instructions: """
            1. Cocina la avena según las instrucciones del paquete.
            2. Sirve la avena en un tazón y añade las frutas secas.
            3. Rocía con un poco de miel para endulzar al gusto.
            4. ¡Disfruta de tu avena cocida con frutas secas y miel!
            """,
            preparationTime: 10,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 300, proteins: 8, carbohydrates: 50, fats: 10),
            tips: ["Añade un toque de canela en polvo para dar más sabor a la avena.", "Experimenta con diferentes tipos de frutas secas, como nueces, pasas, o almendras, para variar el sabor y la textura."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD4D.png?alt=media&token=19ce5fcc-8007-4b14-b642-cc69c29821e9",
            mealType: .breakfast
        ),
        brunch: Recipe(
            name: "Palitos de Apio con Crema de Cacahuate",
            ingredients: ["Apio", "Crema de cacahuate (sin azúcar añadido)"],
            instructions: "Unta la crema de cacahuate en los palitos de apio y disfruta.",
            preparationTime: 5,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 150, proteins: 5, carbohydrates: 10, fats: 12),
            tips: ["Opta por una crema de cacahuate natural sin azúcares añadidos para una opción más saludable.", "Puedes añadir rodajas de manzana para un extra de sabor y textura."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD4MM.png?alt=media&token=ce90773f-5cbf-4ae7-a802-020ba3dd27fc",
            mealType: .brunch
        ),
        lunch: Recipe(
            name: "Pizza Casera con Base de Trigo Integral",
            ingredients: ["Masa de pizza de trigo integral", "Salsa de tomate", "Mozzarella", "Espinacas", "Champiñones"],
            instructions: """
            1. Extiende la masa de pizza sobre una bandeja para hornear.
            2. Unta la salsa de tomate sobre la masa.
            3. Cubre con rodajas de mozzarella, espinacas frescas y champiñones rebanados.
            4. Hornea en el horno precalentado según las instrucciones del paquete de la masa.
            5. Sirve caliente y ¡disfruta de tu pizza casera saludable!
            """,
            preparationTime: 30,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 400, proteins: 20, carbohydrates: 40, fats: 15),
            tips: ["Añade otras verduras como pimientos, cebolla o aceitunas para aumentar el contenido de fibra y nutrientes de la pizza.", "Utiliza queso mozzarella bajo en grasa si deseas reducir el contenido de grasas."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD4C.png?alt=media&token=d4b6ceb5-5ee3-4d43-b6ea-35eda6cdd77c",
            mealType: .lunch
        ),
        afternoonSnack: Recipe(
            name: "Tazón de Fresas",
            ingredients: ["Fresas"],
            instructions: "Lava y corta las fresas en rodajas. Sirve en un tazón y disfruta.",
            preparationTime: 5,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 50, proteins: 1, carbohydrates: 12, fats: 0),
            tips: ["Opta por fresas frescas y maduras para disfrutar de su máximo sabor y dulzura.", "Acompaña con un yogur griego bajo en grasa para un snack más saciante y proteico."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD4M.png?alt=media&token=ca36011c-667c-4aab-9592-d888ba1b8522",
            mealType: .snack
        ),
        dinner: Recipe(
            name: "Ensalada de Quinoa con Aguacate, Tomate, Maíz y Aderezo de Limón y Cilantro",
            ingredients: ["Quinoa", "Aguacate", "Tomate", "Maíz", "Limón", "Cilantro", "Aceite de oliva", "Sal", "Pimienta"],
            instructions: """
            1. Cocina la quinoa según las instrucciones del paquete y deja enfriar.
            2. Corta el aguacate y el tomate en cubos.
            3. En un tazón grande, combina la quinoa cocida, el aguacate, el tomate y el maíz.
            4. Prepara el aderezo mezclando jugo de limón, cilantro picado, aceite de oliva, sal y pimienta al gusto.
            5. Aliña la ensalada con el aderezo y mezcla bien.
            6. Sirve y ¡disfruta de esta refrescante ensalada de quinoa!
            """,
            preparationTime: 25,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 350, proteins: 10, carbohydrates: 40, fats: 15),
            tips: ["Añade otras verduras como pepino o pimiento para aumentar la variedad y la cantidad de nutrientes en la ensalada.", "Para una opción más proteica, agrega un poco de pollo a la parrilla o tofu marinado."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD4C.png?alt=media&token=d4b6ceb5-5ee3-4d43-b6ea-35eda6cdd77c",
            mealType: .dinner
        ),
        dailyNutritionGoals: NutritionGoals(
            totalCalories: 2000,
            proteinGrams: 75,
            carbohydrateGrams: 250,
            fatGrams: 67,
            fiberGrams: 30
        ),
        notes: "Día siguiendo la Dieta Mediterránea\n\nDesayuno: Comienza tu día con la energía y los nutrientes de la avena cocida con frutas secas y miel.\n\nMedia mañana: Disfruta de un snack ligero y nutritivo con palitos de apio y crema de cacahuate.\n\nAlmuerzo: Prepárate una pizza casera saludable con base de trigo integral y ingredientes frescos.\n\nMerienda: Recarga energías con un tazón de fresas frescas, rico en antioxidantes y vitaminas.\n\nCena: Termina el día con una ensalada de quinoa llena de sabor y nutrientes, perfecta para una cena ligera y saludable.",
        nutritionalValues: NutritionalValues(
            totalCalories: 1150,
            proteinGrams: 44,
            carbohydrateGrams: 142,
            fatGrams: 51
        )
    )
    static let viernes = DailyMealPlan(
        dayOfWeek: .friday,
        breakfast: Recipe(
            name: "Tostadas de Pan Integral con Crema de Aguacate y Huevo Pochado",
            ingredients: ["Pan integral", "Aguacate", "Huevo"],
            instructions: """
            1. Tuesta las rebanadas de pan integral.
            2. Machaca el aguacate y úntalo sobre las tostadas.
            3. Prepara el huevo pochado y colócalo sobre el aguacate.
            4. ¡Disfruta de tus tostadas de pan integral con crema de aguacate y huevo pochado!
            """,
            preparationTime: 15,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 350, proteins: 15, carbohydrates: 30, fats: 20),
            tips: ["Añade un poco de sal y pimienta al aguacate para darle más sabor.", "Acompaña las tostadas con una taza de té o café para completar tu desayuno."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD5D.png?alt=media&token=c408a9db-2a7d-457f-abfb-913d9b24c7ba",
            mealType: .breakfast
        ),
        brunch: Recipe(
            name: "Puñado de Almendras",
            ingredients: ["Almendras"],
            instructions: "Simplemente toma un puñado de almendras y disfrútalas como snack.",
            preparationTime: 1,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 150, proteins: 6, carbohydrates: 4, fats: 12),
            tips: ["Opta por almendras naturales y sin sal para una opción más saludable.", "Las almendras son una excelente fuente de grasas saludables y proteínas."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD5MM.png?alt=media&token=932979e4-f7c4-4f3c-bd83-e915a6a21488",
            mealType: .brunch
        ),
        lunch: Recipe(
            name: "Wrap de Pollo con Lechuga, Tomate, Pepino y Salsa de Yogur",
            ingredients: ["Tortilla de trigo integral", "Pechuga de pollo", "Lechuga", "Tomate", "Pepino", "Yogur natural", "Zumo de limón", "Sal", "Pimienta"],
            instructions: """
            1. Cocina la pechuga de pollo y córtala en tiras.
            2. Mezcla el yogur natural con zumo de limón, sal y pimienta para hacer la salsa.
            3. Calienta la tortilla de trigo integral y extiende la salsa de yogur sobre ella.
            4. Coloca las tiras de pollo, lechuga, tomate y pepino en el centro de la tortilla.
            5. Envuelve el wrap y corta por la mitad si lo deseas.
            6. ¡Disfruta de tu wrap de pollo con una refrescante ensalada!
            """,
            preparationTime: 20,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 400, proteins: 25, carbohydrates: 35, fats: 18),
            tips: ["Puedes añadir otros vegetales como pimientos o cebolla para más variedad de sabores y texturas.", "Utiliza pechuga de pollo a la parrilla o a la plancha para una opción más saludable."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD5A.png?alt=media&token=ad46d56a-053d-4e5c-8beb-172cae9832f5",
            mealType: .lunch
        ),
        afternoonSnack: Recipe(
            name: "Yogur Griego con Miel y Nueces",
            ingredients: ["Yogur griego", "Miel", "Nueces"],
            instructions: """
            1. Vierte el yogur griego en un tazón.
            2. Añade un chorrito de miel y mezcla bien.
            3. Espolvorea con nueces picadas.
            4. ¡Disfruta de tu yogur griego con miel y nueces como merienda!
            """,
            preparationTime: 5,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 250, proteins: 15, carbohydrates: 20, fats: 12),
            tips: ["Opta por un yogur griego bajo en grasa para reducir el contenido de grasas.", "Las nueces agregan un crujido delicioso y son una excelente fuente de grasas saludables."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD5M.png?alt=media&token=b2d697f3-cd30-45e9-97ff-3e23dd14e292",
            mealType: .snack
        ),
        dinner: Recipe(
            name: "Filete de Pescado a la Plancha con Ensalada de Espinacas, Fresas y Nueces",
            ingredients: ["Filete de pescado blanco", "Espinacas", "Fresas", "Nueces", "Aceite de oliva", "Vinagre balsámico", "Sal", "Pimienta"],
            instructions: """
            1. Cocina el filete de pescado a la plancha con un poco de aceite de oliva, sal y pimienta.
            2. Prepara la ensalada mezclando espinacas frescas, fresas en rodajas y nueces picadas.
            3. Aliña la ensalada con un poco de aceite de oliva, vinagre balsámico, sal y pimienta al gusto.
            4. Sirve el filete de pescado junto con la ensalada.
            5. ¡Disfruta de una cena ligera y llena de sabor!
            """,
            preparationTime: 20,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 380, proteins: 30, carbohydrates: 20, fats: 22),
            tips: ["Elige un filete de pescado blanco fresco, como lenguado o merluza, para obtener una opción saludable y baja en grasas.", "Las espinacas son ricas en hierro y las fresas aportan un toque dulce y refrescante a la ensalada."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD5C.png?alt=media&token=c3fd24de-0d88-48fb-99fd-d822e37c016f",
            mealType: .dinner
        ),
        dailyNutritionGoals: NutritionGoals(
            totalCalories: 2000,
            proteinGrams: 75,
            carbohydrateGrams: 250,
            fatGrams: 67,
            fiberGrams: 30
        ),
        notes: "Día equilibrado con una variedad de alimentos nutritivos y sabrosos.\n\nDesayuno: Las tostadas de pan integral con crema de aguacate y huevo pochado proporcionan una combinación de proteínas, grasas saludables y carbohidratos complejos para empezar bien el día.\n\nMedia mañana: Un puñado de almendras es un snack energético y nutritivo rico en proteínas y grasas saludables.\n\nAlmuerzo: El wrap de pollo con salsa de yogur es una opción fresca y ligera para el almuerzo, acompañado de una ensalada nutritiva.\n\nMerienda: El yogur griego con miel y nueces es una merienda deliciosa y rica en proteínas que te mantendrá saciado hasta la cena.\n\nCena: El filete de pescado a la plancha con ensalada de espinacas, fresas y nueces es una cena ligera pero satisfactoria, llena de sabor y nutrientes.",
        nutritionalValues: NutritionalValues(
            totalCalories: 1360,
            proteinGrams: 85,
            carbohydrateGrams: 105,
            fatGrams: 65
        )
    )
    static let sabado = DailyMealPlan(
        dayOfWeek: .saturday,
        breakfast: Recipe(
            name: "Tortitas de Avena con Plátano y Nueces",
            ingredients: ["Avena", "Plátano", "Nueces", "Huevo", "Leche"],
            instructions: """
            1. Tritura la avena en un procesador de alimentos hasta obtener una harina fina.
            2. En un tazón, mezcla la avena triturada con un huevo, un plátano machacado y un puñado de nueces picadas.
            3. Calienta una sartén antiadherente y vierte la mezcla para hacer las tortitas.
            4. Cocina cada lado hasta que estén doradas y cocidas por dentro.
            5. Sirve las tortitas con rodajas de plátano y nueces adicionales.
            6. ¡Disfruta de un desayuno delicioso y nutritivo!
            """,
            preparationTime: 20,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 350, proteins: 10, carbohydrates: 40, fats: 18),
            tips: ["Puedes añadir un toque de canela a la mezcla para darle más sabor.", "Sirve las tortitas con un chorrito de miel o sirope de arce si prefieres un toque de dulzura extra."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD6D.png?alt=media&token=8bf57583-16aa-4fcb-81bd-318c69d2c708",
            mealType: .breakfast
        ),
        brunch: Recipe(
            name: "Rodajas de Piña",
            ingredients: ["Piña"],
            instructions: "Simplemente corta la piña en rodajas y disfruta de esta refrescante fruta como snack.",
            preparationTime: 5,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 80, proteins: 1, carbohydrates: 20, fats: 0),
            tips: ["La piña es rica en vitamina C y fibra, lo que la convierte en una opción saludable para mantenerse hidratado y saciado."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD6MM.png?alt=media&token=605cec07-2199-49ad-a003-42cf8b63a06c",
            mealType: .brunch
        ),
        lunch: Recipe(
            name: "Paella de Mariscos con Arroz Integral",
            ingredients: ["Arroz integral", "Mezcla de mariscos (calamares, langostinos, mejillones, etc.)", "Pimiento rojo", "Pimiento verde", "Cebolla", "Ajo", "Tomate", "Caldo de pescado", "Azafrán", "Aceite de oliva", "Sal", "Pimienta"],
            instructions: """
            1. Sofríe la cebolla, el ajo y los pimientos en aceite de oliva hasta que estén tiernos.
            2. Añade el tomate picado y cocina hasta que se reduzca.
            3. Agrega el arroz integral y mezcla bien.
            4. Vierte el caldo de pescado caliente y añade el azafrán.
            5. Cocina a fuego lento hasta que el arroz esté tierno y el líquido se haya absorbido.
            6. Agrega los mariscos y cocina hasta que estén cocidos.
            7. Rectifica la sazón con sal y pimienta al gusto.
            8. Sirve la paella caliente y disfruta de este clásico plato español.
            """,
            preparationTime: 45,
            servings: 4,
            nutritionalValue: NutritionalValue(calories: 450, proteins: 25, carbohydrates: 60, fats: 12),
            tips: ["Para un toque extra de sabor, puedes añadir un poco de vino blanco al sofrito antes de agregar el arroz.", "Elige mariscos frescos y de calidad para una paella más sabrosa."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD6A.png?alt=media&token=c4ec2f0b-097f-4578-9b05-c76528ff10e7",
            mealType: .lunch
        ),
        afternoonSnack: Recipe(
            name: "Batido de Mango y Espinacas",
            ingredients: ["Mango", "Espinacas frescas", "Leche de almendras", "Yogur griego"],
            instructions: """
            1. Pela y corta el mango en trozos.
            2. En una licuadora, mezcla el mango con un puñado de espinacas frescas, un poco de leche de almendras y yogur griego.
            3. Licua hasta obtener una mezcla suave y homogénea.
            4. Sirve el batido en un vaso y disfruta de esta refrescante y saludable merienda.
            """,
            preparationTime: 10,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 200, proteins: 8, carbohydrates: 35, fats: 5),
            tips: ["Añade un poco de miel o sirope de arce si prefieres un batido más dulce.", "Puedes agregar semillas de chía o linaza para un extra de fibra y omega-3."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD6M.png?alt=media&token=5db384cd-d8ec-4811-b9da-f0181a9aad66",
            mealType: .snack
        ),
        dinner: Recipe(
            name: "Ensalada Caprese con Tomate, Mozzarella Fresca y Albahaca, acompañada de Pan Integral",
            ingredients: ["Tomate", "Mozzarella fresca", "Albahaca fresca", "Aceite de oliva virgen extra", "Vinagre balsámico", "Sal", "Pimienta", "Pan integral"],
            instructions: """
            1. Corta los tomates y la mozzarella en rodajas.
            2. Alterna las rodajas de tomate y mozzarella en un plato.
            3. Decora con hojas de albahaca fresca.
            4. Rocía con aceite de oliva virgen extra y vinagre balsámico.
            5. Espolvorea con sal y pimienta al gusto.
            6. Acompaña la ensalada con rebanadas de pan integral.
            7. ¡Disfruta de esta deliciosa y sencilla ensalada caprese!
            """,
            preparationTime: 15,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 320, proteins: 15, carbohydrates: 10, fats: 25),
            tips: ["Utiliza tomates y mozzarella de buena calidad para obtener el mejor sabor.", "La albahaca fresca añade un aroma y sabor únicos a la ensalada."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD6C.png?alt=media&token=841372d6-9fe4-45a9-8093-a9ef81d0d022",
            mealType: .dinner
        ),
        dailyNutritionGoals: NutritionGoals(
            totalCalories: 2000,
            proteinGrams: 75,
            carbohydrateGrams: 250,
            fatGrams: 67,
            fiberGrams: 30
        ),
        notes: "Día lleno de sabores variados y saludables.\n\nDesayuno: Las tortitas de avena con plátano y nueces son una manera deliciosa de comenzar el día con carbohidratos complejos y grasas saludables.\n\nMedia mañana: Las rodajas de piña son una opción refrescante y baja en calorías para mantenerse saciado hasta el almuerzo.\n\nAlmuerzo: La paella de mariscos con arroz integral es un plato tradicional español rico en proteínas y carbohidratos, perfecto para una comida satisfactoria.\n\nMerienda: El batido de mango y espinacas es una opción refrescante y nutritiva para recargar energías por la tarde.\n\nCena: La ensalada caprese con tomate, mozzarella fresca y albahaca es una cena ligera pero llena de sabor, perfecta para terminar el día de forma saludable.",
        nutritionalValues: NutritionalValues(
            totalCalories: 1350,
            proteinGrams: 58,
            carbohydrateGrams: 135,
            fatGrams: 65
        )
    )
    static let domingo = DailyMealPlan(
        dayOfWeek: .sunday,
        breakfast: Recipe(
            name: "Tostadas de Pan Integral con Tomate Rallado y Jamón Serrano",
            ingredients: ["Pan integral", "Tomate", "Jamón serrano"],
            instructions: """
            1. Tuesta las rebanadas de pan integral.
            2. Ralla el tomate y úntalo sobre las tostadas.
            3. Coloca las lonchas de jamón serrano sobre el tomate.
            4. ¡Disfruta de tus tostadas de pan integral con tomate rallado y jamón serrano!
            """,
            preparationTime: 10,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 250, proteins: 15, carbohydrates: 25, fats: 10),
            tips: ["Puedes añadir un chorrito de aceite de oliva virgen extra y una pizca de sal a las tostadas para realzar el sabor.", "Acompaña las tostadas con un café o té caliente para completar tu desayuno."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD7D.png?alt=media&token=b8bd8ed6-b35b-4808-9351-02744e63bfa5",
            mealType: .breakfast
        ),
        brunch: Recipe(
            name: "Puñado de Nueces",
            ingredients: ["Nueces"],
            instructions: "Simplemente disfruta de un puñado de nueces como snack para recargar energías.",
            preparationTime: 2,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 200, proteins: 5, carbohydrates: 4, fats: 18),
            tips: ["Las nueces son una excelente fuente de grasas saludables, proteínas y fibra, ideales para mantenerse saciado hasta la próxima comida."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD7MM.png?alt=media&token=abe72846-9326-405b-a78e-7672bfc8998c",
            mealType: .brunch
        ),
        lunch: Recipe(
            name: "Estofado de Garbanzos con Espinacas y Calabaza",
            ingredients: ["Garbanzos cocidos", "Espinacas frescas", "Calabaza", "Cebolla", "Ajo", "Tomate", "Caldo de verduras", "Pimentón", "Comino", "Aceite de oliva", "Sal", "Pimienta"],
            instructions: """
            1. En una olla, calienta un poco de aceite de oliva y sofríe la cebolla y el ajo picados hasta que estén dorados.
            2. Añade la calabaza cortada en trozos y cocina hasta que empiece a ablandarse.
            3. Agrega el tomate picado y cocina hasta que se reduzca.
            4. Incorpora los garbanzos cocidos y el caldo de verduras.
            5. Condimenta con pimentón, comino, sal y pimienta al gusto.
            6. Deja cocinar a fuego lento hasta que los sabores se mezclen y la calabaza esté tierna.
            7. Añade las espinacas frescas y cocina hasta que se marchiten.
            8. Sirve caliente y disfruta de este reconfortante estofado de garbanzos.
            """,
            preparationTime: 40,
            servings: 4,
            nutritionalValue: NutritionalValue(calories: 300, proteins: 15, carbohydrates: 40, fats: 10),
            tips: ["Puedes añadir otras verduras como zanahorias o pimientos para aumentar el contenido de fibra y nutrientes del estofado.", "Sirve el estofado con un poco de pan integral para una comida más completa y satisfactoria."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD7C.png?alt=media&token=44a67e54-5ede-4d1b-8003-9dfc4121c305",
            mealType: .lunch
        ),
        afternoonSnack: Recipe(
            name: "Rodajas de Manzana con Crema de Almendras",
            ingredients: ["Manzana", "Crema de almendras"],
            instructions: """
            1. Corta la manzana en rodajas finas.
            2. Unta cada rodaja de manzana con crema de almendras.
            3. ¡Disfruta de este delicioso y saludable snack!
            """,
            preparationTime: 5,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 150, proteins: 3, carbohydrates: 20, fats: 8),
            tips: ["Elige una crema de almendras sin añadidos de azúcares ni aceites hidrogenados para una opción más saludable.", "Puedes espolvorear un poco de canela sobre las rodajas de manzana para un toque extra de sabor."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD7M.png?alt=media&token=33d9b2b8-a477-490a-b49b-5492fc84fbfb",
            mealType: .snack
        ),
        dinner: Recipe(
            name: "Sopa de Verduras con Queso Parmesano Rallado y Pan Integral",
            ingredients: ["Caldo de verduras", "Zanahoria", "Apio", "Cebolla", "Puerro", "Tomate", "Espinacas", "Queso parmesano rallado", "Pan integral"],
            instructions: """
            1. En una olla, calienta el caldo de verduras.
            2. Añade las zanahorias, el apio, la cebolla, el puerro y el tomate cortados en trozos.
            3. Deja cocinar a fuego medio hasta que las verduras estén tiernas.
            4. Agrega las espinacas frescas y cocina hasta que se marchiten.
            5. Sirve la sopa caliente y espolvorea queso parmesano rallado por encima.
            6. Acompaña la sopa con rebanadas de pan integral.
            7. ¡Disfruta de esta reconfortante sopa de verduras!
            """,
            preparationTime: 30,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 250, proteins: 10, carbohydrates: 30, fats: 8),
            tips: ["Puedes añadir otras verduras de tu elección, como pimientos o judías verdes, para variar el sabor y aumentar el contenido nutricional de la sopa.", "El pan integral es una excelente opción para acompañar la sopa y proporcionar carbohidratos complejos y fibra."],
            image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2FMediterranianDiet%2FDMD7C.png?alt=media&token=44a67e54-5ede-4d1b-8003-9dfc4121c305",
            mealType: .dinner
        ),
        dailyNutritionGoals: NutritionGoals(
            totalCalories: 2000,
            proteinGrams: 75,
            carbohydrateGrams: 250,
            fatGrams: 67,
            fiberGrams: 30
        ),
        notes: "Día de comidas reconfortantes y saludables.\n\nDesayuno: Las tostadas de pan integral con tomate rallado y jamón serrano son una manera deliciosa y nutritiva de empezar el día con proteínas magras y carbohidratos complejos.\n\nMedia mañana: Las nueces son un snack práctico y lleno de nutrientes, perfecto para mantenerse saciado entre comidas.\n\nAlmuerzo: El estofado de garbanzos con espinacas y calabaza es una comida reconfortante y rica en fibra y proteínas, ideal para recargar energías a medio día.\n\nMerienda: Las rodajas de manzana con crema de almendras son una opción saludable y deliciosa para calmar el hambre entre comidas.\n\nCena: La sopa de verduras con queso parmesano rallado y pan integral es una cena reconfortante y nutritiva, perfecta para terminar el día de forma ligera pero satisfactoria.",
        nutritionalValues: NutritionalValues(
            totalCalories: 1150,
            proteinGrams: 53,
            carbohydrateGrams: 110,
            fatGrams: 45
        )
    )
}
