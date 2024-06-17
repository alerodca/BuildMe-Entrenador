//
//  KetoDiet.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 16/6/24.
//

import Foundation

class KetoDiet {
    static let keto = Diet(
        name: "Dieta Keto / Cetogénica",
        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2Fketo.jpeg?alt=media&token=aa147c7c-56c6-4058-9938-fde6a5d6c79f",
        description: "La dieta cetogénica, comúnmente conocida como dieta keto, es un enfoque alimentario que se caracteriza por ser muy bajo en carbohidratos, moderado en proteínas y alto en grasas saludables. El objetivo principal de esta dieta es inducir un estado metabólico llamado cetosis, donde el cuerpo utiliza la grasa como principal fuente de energía en lugar de los carbohidratos.",
        durationInWeeks: 8,
        days: [
            DietDay(
                day: .monday,
                breakfast: Recipe(
                    name: "Omelette con espinacas y queso feta",
                    ingredients: ["espinacas", "queso feta", "huevos"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD1D.png?alt=media&token=decc31ed-6f71-4b25-b0ba-1df6bf8aae28",
                    nutritionalValues: NutritionalValues(calories: 300, protein: 20, carbohydrates: 5, fat: 15),
                    mealType: .breakfast,
                    tips: "Agregar sal y pimienta al gusto."
                ),
                lunch: Recipe(
                    name: "Ensalada de pollo con aderezo de aceite de oliva",
                    ingredients: ["pollo", "lechuga", "pepino", "tomate", "aceitunas", "aceite de oliva"],
                    preparationTime: 20,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD1A.png?alt=media&token=9b489ecd-e935-44af-90d5-0a8489b35b1b",
                    nutritionalValues: NutritionalValues(calories: 350, protein: 25, carbohydrates: 15, fat: 20),
                    mealType: .lunch,
                    tips: "Aderezar la ensalada justo antes de servir."
                ),
                snack: Recipe(
                    name: "Puñado de nueces",
                    ingredients: ["nueces", "almendras", "pecanas"],
                    preparationTime: 0,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD1M.png?alt=media&token=0c608eb7-98c8-46fb-bcb0-336eb2254471",
                    nutritionalValues: NutritionalValues(calories: 200, protein: 5, carbohydrates: 5, fat: 18),
                    mealType: .snack,
                    tips: "Elegir nueces sin sal añadida."
                ),
                dinner: Recipe(
                    name: "Sopa de verduras con queso parmesano rallado y pan integral",
                    ingredients: ["Verduras variadas", "Queso parmesano rallado", "Pan integral"],
                    preparationTime: 30,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD1C.png?alt=media&token=a207f96d-3203-4734-aacc-d292c46f2767",
                    nutritionalValues: NutritionalValues(calories: 250, protein: 10, carbohydrates: 30, fat: 8),
                    mealType: .dinner,
                    tips: "Agrega un poco de tomillo fresco a la sopa para un aroma delicioso."
                ),
                midMorningSnack: Recipe(
                    name: "Aguacate en rodajas con café o té",
                    ingredients: ["aguacate", "café o té (sin azúcar)"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD1MM.png?alt=media&token=2c78cab2-6b48-46d3-bfeb-c43c139814f4",
                    nutritionalValues: NutritionalValues(calories: 150, protein: 2, carbohydrates: 10, fat: 12),
                    mealType: .breakfast,
                    tips: "Preparar el té o café sin añadir azúcar."
                ),
                nutritionalGoals: NutritionalValues(calories: 1800, protein: 120, carbohydrates: 200, fat: 60)
            ),
            DietDay(
                day: .tuesday,
                breakfast: Recipe(
                    name: "Huevos revueltos con queso cheddar y aguacate",
                    ingredients: ["huevos", "queso cheddar", "aguacate", "tocino"],
                    preparationTime: 20,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD2D.jpg?alt=media&token=c7624203-c3b8-4824-8754-76aeb3b1d87e", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 400, protein: 25, carbohydrates: 5, fat: 30),
                    mealType: .breakfast,
                    tips: "Revolver constantemente los huevos para una textura suave y cremosa."
                ),
                lunch: Recipe(
                    name: "Ensalada de atún con mayonesa, apio y pimientos sobre una cama de lechuga",
                    ingredients: ["atún", "mayonesa", "apio", "pimientos", "lechuga"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD2A.png?alt=media&token=27ebaf0c-cdb2-45a1-a49a-240583b85856", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 300, protein: 20, carbohydrates: 10, fat: 15),
                    mealType: .lunch,
                    tips: "Escurrir bien el atún antes de mezclarlo con los demás ingredientes."
                ),
                snack: Recipe(
                    name: "Rodajas de pepino con dip de crema agria",
                    ingredients: ["pepino", "crema agria"],
                    preparationTime: 10,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD2M.png?alt=media&token=8ae66742-a5f5-4e53-8c6a-cd6e14ab9886", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 100, protein: 2, carbohydrates: 8, fat: 7),
                    mealType: .snack,
                    tips: "Prepara el dip mezclando la crema agria con tus hierbas y especias favoritas."
                ),
                dinner: Recipe(
                    name: "Pollo a la parrilla con brócoli al vapor",
                    ingredients: ["pollo", "brócoli", "aceite de oliva", "col rizada"],
                    preparationTime: 30,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD2C.png?alt=media&token=cdbb2910-f027-4dd0-8bec-3c1f839689c7", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 450, protein: 35, carbohydrates: 15, fat: 20),
                    mealType: .dinner,
                    tips: "Marina el pollo antes de asarlo para más sabor."
                ),
                midMorningSnack: Recipe(
                    name: "Queso en cubos",
                    ingredients: ["queso"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD2MM.png?alt=media&token=cbd674f5-0bb0-4c87-a0d4-477e3d9e4903", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 200, protein: 15, carbohydrates: 2, fat: 15),
                    mealType: .snack,
                    tips: "Elige un queso bajo en grasa si prefieres una opción más ligera."
                ),
                nutritionalGoals: NutritionalValues(calories: 1800, protein: 120, carbohydrates: 200, fat: 60)
            ),
            DietDay(
                day: .wednesday,
                breakfast: Recipe(
                    name: "Tazón de yogur griego con semillas de chía y nueces",
                    ingredients: ["yogur griego", "semillas de chía", "nueces"],
                    preparationTime: 10,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD3D.png?alt=media&token=d3c383a8-9087-4cea-9d53-fead51e29566", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 300, protein: 20, carbohydrates: 15, fat: 18),
                    mealType: .breakfast,
                    tips: "Agregar miel o frutas frescas para un toque dulce adicional."
                ),
                lunch: Recipe(
                    name: "Ensalada César con pollo (sin crutones)",
                    ingredients: ["pollo", "lechuga romana", "queso parmesano", "aderezo César"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD3A.png?alt=media&token=39d574e3-75ca-4cb7-8d03-643f3107648b", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 350, protein: 30, carbohydrates: 10, fat: 20),
                    mealType: .lunch,
                    tips: "Preparar el aderezo César casero para un mejor control de los ingredientes."
                ),
                snack: Recipe(
                    name: "Aguacate relleno de ensalada de huevo",
                    ingredients: ["aguacate", "huevo cocido", "mayonesa", "mostaza", "cebolla"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD3M.png?alt=media&token=010e02a7-f2c2-4fbb-aff7-8ac440c2ddfe", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 250, protein: 10, carbohydrates: 8, fat: 20),
                    mealType: .snack,
                    tips: "Mezclar bien los ingredientes de la ensalada de huevo para una textura suave."
                ),
                dinner: Recipe(
                    name: "Bistec a la parrilla con espárragos",
                    ingredients: ["bistec", "espárragos", "aceite de oliva", "sal", "pimienta"],
                    preparationTime: 25,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD3C.png?alt=media&token=f75f0ffe-ed41-4d9c-9673-83caaa1f8bad", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 450, protein: 35, carbohydrates: 10, fat: 30),
                    mealType: .dinner,
                    tips: "Marinar el bistec antes de asarlo para más sabor."
                ),
                midMorningSnack: Recipe(
                    name: "Pimientos mini rellenos de queso crema",
                    ingredients: ["pimientos mini", "queso crema", "cebollino"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD3MM.png?alt=media&token=ad2ce5a0-6601-46b9-98bc-24180fb511b7", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 150, protein: 5, carbohydrates: 5, fat: 10),
                    mealType: .snack,
                    tips: "Elegir pimientos mini frescos y firmes para un mejor resultado."
                ),
                nutritionalGoals: NutritionalValues(calories: 1800, protein: 120, carbohydrates: 200, fat: 60)
            ),
            DietDay(
                day: .thursday,
                breakfast: Recipe(
                    name: "Tortilla de huevos con champiñones, pimientos y queso suizo",
                    ingredients: ["huevos", "champiñones", "pimientos", "queso suizo"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD4D.png?alt=media&token=da9fe4c6-0fa9-470f-845b-314cd093a959", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 350, protein: 25, carbohydrates: 5, fat: 25),
                    mealType: .breakfast,
                    tips: "Cocinar a fuego medio para que los ingredientes se integren bien."
                ),
                lunch: Recipe(
                    name: "Hamburguesa sin pan con lechuga, tomate, cebolla y mayonesa",
                    ingredients: ["carne de hamburguesa", "lechuga", "tomate", "cebolla", "mayonesa"],
                    preparationTime: 20,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD4A.png?alt=media&token=909693fd-5460-40a4-a5e7-464aa4c55239", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 450, protein: 30, carbohydrates: 10, fat: 35),
                    mealType: .lunch,
                    tips: "Usar hojas de lechuga grandes para envolver la hamburguesa."
                ),
                snack: Recipe(
                    name: "Palitos de apio con mantequilla de almendra",
                    ingredients: ["apio", "mantequilla de almendra"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD4M.png?alt=media&token=61169863-b53c-4b09-8d7e-9ef1daa6e0aa", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 150, protein: 4, carbohydrates: 6, fat: 13),
                    mealType: .snack,
                    tips: "Agregar un poco de sal marina a la mantequilla de almendra para mejorar el sabor."
                ),
                dinner: Recipe(
                    name: "Gambas al ajillo con verduras al vapor (calabacín, brócoli)",
                    ingredients: ["gambas", "ajo", "aceite de oliva", "calabacín", "brócoli"],
                    preparationTime: 20,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD4C.png?alt=media&token=68eedf8a-a34c-4786-aece-10607aebffc2", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 400, protein: 30, carbohydrates: 10, fat: 25),
                    mealType: .dinner,
                    tips: "No cocinar las gambas por mucho tiempo para evitar que se vuelvan gomosas."
                ),
                midMorningSnack: Recipe(
                    name: "Un puñado de almendras",
                    ingredients: ["almendras"],
                    preparationTime: 1,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD4MM.png?alt=media&token=99bb1f9f-f885-4719-b965-6c605455f830", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 160, protein: 6, carbohydrates: 6, fat: 14),
                    mealType: .snack,
                    tips: "Optar por almendras crudas o ligeramente tostadas para un mejor sabor."
                ),
                nutritionalGoals: NutritionalValues(calories: 1800, protein: 120, carbohydrates: 200, fat: 60)
            ),
            DietDay(
                day: .friday,
                breakfast: Recipe(
                    name: "Huevos pochados con aguacate y tomate",
                    ingredients: ["huevos", "aguacate", "tomate"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD5D.png?alt=media&token=e7bd9450-5ec8-426b-afe3-10c359459fbb", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 350, protein: 20, carbohydrates: 10, fat: 25),
                    mealType: .breakfast,
                    tips: "Añadir un poco de sal y pimienta para resaltar los sabores."
                ),
                lunch: Recipe(
                    name: "Ensalada de salmón ahumado con espinacas, aguacate, cebolla roja y aderezo de aceite de oliva",
                    ingredients: ["salmón ahumado", "espinacas", "aguacate", "cebolla roja", "aceite de oliva"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD5A.png?alt=media&token=26b3dffd-869d-455e-ac58-2129e1ea40d6", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 400, protein: 25, carbohydrates: 10, fat: 30),
                    mealType: .lunch,
                    tips: "Utilizar salmón ahumado de alta calidad para un mejor sabor."
                ),
                snack: Recipe(
                    name: "Queso mozzarella con tomate y albahaca",
                    ingredients: ["queso mozzarella", "tomate", "albahaca"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD5M.png?alt=media&token=7949c3ad-7abd-4926-b14c-9d7de0c08948", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 200, protein: 10, carbohydrates: 5, fat: 15),
                    mealType: .snack,
                    tips: "Agregar un chorrito de aceite de oliva y una pizca de sal."
                ),
                dinner: Recipe(
                    name: "Pollo al curry con coliflor",
                    ingredients: ["pollo", "coliflor", "curry en polvo", "leche de coco", "aceite de oliva"],
                    preparationTime: 30,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD5C.png?alt=media&token=ab1a2451-5a26-4eaa-aa28-9c0019448b04", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 450, protein: 35, carbohydrates: 15, fat: 30),
                    mealType: .dinner,
                    tips: "Cocinar el pollo a fuego lento para que absorba bien los sabores del curry."
                ),
                midMorningSnack: Recipe(
                    name: "Yogur griego con un poco de canela y nueces",
                    ingredients: ["yogur griego", "canela", "nueces"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD5MM.png?alt=media&token=b994919c-9b28-49d2-88a3-63835d4d3ebf", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 200, protein: 15, carbohydrates: 10, fat: 10),
                    mealType: .snack,
                    tips: "Agregar la canela justo antes de servir para un aroma fresco."
                ),
                nutritionalGoals: NutritionalValues(calories: 1800, protein: 120, carbohydrates: 200, fat: 60)
            ),
            DietDay(
                day: .saturday,
                breakfast: Recipe(
                    name: "Smoothie keto",
                    ingredients: ["leche de almendra", "aguacate", "espinacas", "proteína en polvo sin carbohidratos", "hielo"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD6D.png?alt=media&token=27b4293a-1437-456d-8d54-bb63813efd92", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 300, protein: 20, carbohydrates: 5, fat: 25),
                    mealType: .breakfast,
                    tips: "Mezclar bien todos los ingredientes hasta obtener una consistencia suave."
                ),
                lunch: Recipe(
                    name: "Ensalada de bistec con rúcula, pimientos asados y aderezo de aceite de oliva",
                    ingredients: ["bistec", "rúcula", "pimientos asados", "aceite de oliva"],
                    preparationTime: 20,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD6A.png?alt=media&token=d14c4f03-ff10-4d26-bc66-84436bd6ea45", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 450, protein: 30, carbohydrates: 10, fat: 35),
                    mealType: .lunch,
                    tips: "Cortar el bistec en rodajas finas y servir caliente sobre la ensalada."
                ),
                snack: Recipe(
                    name: "Huevos duros",
                    ingredients: ["huevos"],
                    preparationTime: 10,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD6M.png?alt=media&token=f7a82b8f-7edb-4981-b8a1-96093b72f8e8", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 140, protein: 12, carbohydrates: 1, fat: 10),
                    mealType: .snack,
                    tips: "Agregar una pizca de sal y pimienta para mejorar el sabor."
                ),
                dinner: Recipe(
                    name: "Chuletas de cerdo con puré de coliflor",
                    ingredients: ["chuletas de cerdo", "coliflor", "mantequilla", "sal", "pimienta"],
                    preparationTime: 30,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD6C.png?alt=media&token=4f5913ef-9805-4658-af83-87b5a9ec20fe", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 500, protein: 40, carbohydrates: 10, fat: 35),
                    mealType: .dinner,
                    tips: "Cocinar las chuletas a fuego medio-alto para dorar bien por fuera."
                ),
                midMorningSnack: Recipe(
                    name: "Rodajas de pepino con queso feta",
                    ingredients: ["pepino", "queso feta"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD6MM.png?alt=media&token=3353f280-9fe6-4877-ac4f-92ecc1bc5421", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 100, protein: 4, carbohydrates: 5, fat: 7),
                    mealType: .snack,
                    tips: "Usar queso feta desmenuzado para una mejor distribución sobre las rodajas de pepino."
                ),
                nutritionalGoals: NutritionalValues(calories: 1800, protein: 120, carbohydrates: 200, fat: 60)
            ),
            DietDay(
                day: .sunday,
                breakfast: Recipe(
                    name: "Frittata de espinacas y champiñones con queso de cabra",
                    ingredients: ["espinacas", "champiñones", "huevos", "queso de cabra"],
                    preparationTime: 20,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD7D.png?alt=media&token=f2b77a1f-c27c-401b-b903-1e9de3191762", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 350, protein: 20, carbohydrates: 10, fat: 25),
                    mealType: .breakfast,
                    tips: "Cocinar a fuego medio-bajo para que la frittata quede esponjosa."
                ),
                lunch: Recipe(
                    name: "Ensalada de camarones con aguacate, tomate y aderezo de limón",
                    ingredients: ["camarones", "aguacate", "tomate", "limón", "aceite de oliva"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD7A.png?alt=media&token=879964ee-90e2-4a7c-a984-6cc2ba300cc2", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 400, protein: 25, carbohydrates: 10, fat: 30),
                    mealType: .lunch,
                    tips: "Usar camarones frescos y bien cocidos para un mejor sabor."
                ),
                snack: Recipe(
                    name: "Palitos de zanahoria con hummus bajo en carbohidratos",
                    ingredients: ["zanahorias", "hummus bajo en carbohidratos"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD7M.png?alt=media&token=50b81e57-a243-4fc7-b82b-02baaefd2923", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 150, protein: 4, carbohydrates: 10, fat: 10),
                    mealType: .snack,
                    tips: "Agregar un poco de pimentón al hummus para un sabor extra."
                ),
                dinner: Recipe(
                    name: "Pavo asado con judías verdes al vapor",
                    ingredients: ["pavo", "judías verdes", "aceite de oliva", "sal", "pimienta"],
                    preparationTime: 40,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD7C.png?alt=media&token=1e4ec594-9a2f-44ee-94fe-f02595ee9b97", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 500, protein: 35, carbohydrates: 15, fat: 30),
                    mealType: .dinner,
                    tips: "Asegúrate de que el pavo esté bien dorado antes de servir."
                ),
                midMorningSnack: Recipe(
                    name: "Yogur griego con semillas de lino",
                    ingredients: ["yogur griego", "semillas de lino"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fketo%2FDKD7MM.png?alt=media&token=6ac5ddd5-7914-439c-bac9-24de3709021b", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(calories: 200, protein: 15, carbohydrates: 10, fat: 10),
                    mealType: .snack,
                    tips: "Agregar las semillas de lino justo antes de servir para mantener su textura crujiente."
                ),
                nutritionalGoals: NutritionalValues(calories: 1800, protein: 120, carbohydrates: 200, fat: 60)
            ),
        ]
    )
}
