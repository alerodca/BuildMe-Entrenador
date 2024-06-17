//
//  VeganDiet.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 17/6/24.
//

import Foundation

class VeganDiet {
    static let diet = Diet(
        name: "Dieta Vegana",
        image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2Fvegana.jpeg?alt=media&token=76d16825-9efb-4f08-b7b3-db230e34ce0a",
        description: "Una dieta vegana es un régimen alimenticio que excluye todos los productos de origen animal. Esto incluye no solo carne y pescado, sino también productos derivados de los animales como los lácteos, los huevos y la miel. En lugar de estos, una dieta vegana se centra en alimentos de origen vegetal.",
        durationInWeeks: 8,
        days: [
            DietDay(
                day: .monday,
                breakfast: Recipe(
                    name: "Avena con leche de almendra, semillas de chía, frutas del bosque y nueces",
                    ingredients: ["Avena", "Leche de almendra", "Semillas de chía", "Frutas del bosque", "Nueces"],
                    preparationTime: 10,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD1D.png?alt=media&token=99f48457-ddde-45f0-8968-27db4cc1b4f2", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 350,
                        protein: 8,
                        carbohydrates: 45,
                        fat: 15
                    ),
                    mealType: .breakfast,
                    tips: "Deja la avena en remojo toda la noche para una textura más cremosa."
                ),
                lunch: Recipe(
                    name: "Ensalada de garbanzos con espinacas, pepino, tomate, aceitunas y aderezo de tahini",
                    ingredients: ["Garbanzos", "Espinacas", "Pepino", "Tomate", "Aceitunas", "Aderezo de tahini"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD1A.png?alt=media&token=d3254a80-69ea-47bb-9a98-41e3008ceb56", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 400,
                        protein: 15,
                        carbohydrates: 50,
                        fat: 20
                    ),
                    mealType: .lunch,
                    tips: "Añade un poco de jugo de limón para un toque fresco."
                ),
                snack: Recipe(
                    name: "Manzana con mantequilla de almendra",
                    ingredients: ["Manzana", "Mantequilla de almendra"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD1M.png?alt=media&token=d9436df0-a66b-4572-ba41-a324c5f4ade4", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 200,
                        protein: 6,
                        carbohydrates: 30,
                        fat: 10
                    ),
                    mealType: .snack,
                    tips: "Corta la manzana en rodajas finas para un mejor sabor y textura."
                ),
                dinner: Recipe(
                    name: "Tofu al curry con arroz integral y brócoli al vapor",
                    ingredients: ["Tofu", "Curry", "Arroz integral", "Brócoli"],
                    preparationTime: 30,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD1C.png?alt=media&token=44af0121-0b29-4486-8408-ae9bbe57520a", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 500,
                        protein: 20,
                        carbohydrates: 60,
                        fat: 25
                    ),
                    mealType: .dinner,
                    tips: "Marina el tofu durante al menos 20 minutos para un mejor sabor."
                ),
                midMorningSnack: Recipe(
                    name: "Yogur de coco con granola sin azúcar",
                    ingredients: ["Yogur de coco", "Granola sin azúcar"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD1MM.png?alt=media&token=6edae0dd-c2e2-402d-b6ba-fc3b96f5508e", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 150,
                        protein: 4,
                        carbohydrates: 20,
                        fat: 8
                    ),
                    mealType: .snack,
                    tips: "Añade un poco de canela para un sabor extra."
                ),
                nutritionalGoals: NutritionalValues(
                    calories: 1600,
                    protein: 53,
                    carbohydrates: 205,
                    fat: 78
                )
            ),
            DietDay(
                day: .tuesday,
                breakfast: Recipe(
                    name: "Smoothie verde",
                    ingredients: ["Espinacas", "Plátano", "Leche de soja", "Semillas de lino", "Proteína vegetal en polvo"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD2D.png?alt=media&token=dc2c2f0e-495a-49ed-87aa-8aa814930e01", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 300,
                        protein: 20,
                        carbohydrates: 50,
                        fat: 10
                    ),
                    mealType: .breakfast,
                    tips: "Añade hielo para una textura más fresca y espesa."
                ),
                lunch: Recipe(
                    name: "Ensalada de quinoa con aguacate, maíz, frijoles negros, pimientos y cilantro",
                    ingredients: ["Quinoa", "Aguacate", "Maíz", "Frijoles negros", "Pimientos", "Cilantro"],
                    preparationTime: 20,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD2A.png?alt=media&token=5e438ac0-ccdc-4945-8381-3f5321382ea4", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 400,
                        protein: 15,
                        carbohydrates: 55,
                        fat: 15
                    ),
                    mealType: .lunch,
                    tips: "Enfría la quinoa antes de añadir los ingredientes para una ensalada más refrescante."
                ),
                snack: Recipe(
                    name: "Palitos de zanahoria y apio con hummus",
                    ingredients: ["Zanahoria", "Apio", "Hummus"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD2M.png?alt=media&token=632482a0-1670-4edc-bcc7-25f1a0789cf4", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 150,
                        protein: 5,
                        carbohydrates: 20,
                        fat: 8
                    ),
                    mealType: .snack,
                    tips: "Mantén los palitos de zanahoria y apio en agua fría hasta el momento de servir para que se mantengan crujientes."
                ),
                dinner: Recipe(
                    name: "Lentejas estofadas con espinacas y tomate, servido con pan integral",
                    ingredients: ["Lentejas", "Espinacas", "Tomate", "Pan integral"],
                    preparationTime: 30,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD2C.png?alt=media&token=f98f8548-bc77-41b4-9219-81bd0c7ca12e", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 500,
                        protein: 25,
                        carbohydrates: 70,
                        fat: 15
                    ),
                    mealType: .dinner,
                    tips: "Cocina las lentejas a fuego lento para que absorban bien los sabores."
                ),
                midMorningSnack: Recipe(
                    name: "Pudín de chía",
                    ingredients: ["Leche de almendra", "Semillas de chía", "Extracto de vainilla"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD2MM.png?alt=media&token=6a4eaca6-6042-466d-b326-e9ceafbfe918", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 200,
                        protein: 6,
                        carbohydrates: 20,
                        fat: 12
                    ),
                    mealType: .snack,
                    tips: "Deja el pudín de chía reposar durante la noche para una mejor consistencia."
                ),
                nutritionalGoals: NutritionalValues(
                    calories: 1600,
                    protein: 71,
                    carbohydrates: 215,
                    fat: 60
                )
            ),
            DietDay(
                day: .wednesday,
                breakfast: Recipe(
                    name: "Tostada de pan integral con aguacate y tomate, espolvoreada con semillas de cáñamo",
                    ingredients: ["Pan integral", "Aguacate", "Tomate", "Semillas de cáñamo"],
                    preparationTime: 10,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD3D.png?alt=media&token=1eaf3556-be43-466f-9f13-64167726d064", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 350,
                        protein: 8,
                        carbohydrates: 40,
                        fat: 20
                    ),
                    mealType: .breakfast,
                    tips: "Añade un chorrito de aceite de oliva y una pizca de sal marina para un sabor extra."
                ),
                lunch: Recipe(
                    name: "Wrap de tempeh con lechuga, zanahoria rallada, pepino y hummus",
                    ingredients: ["Tempeh", "Lechuga", "Zanahoria rallada", "Pepino", "Hummus", "Tortilla de trigo integral"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD3A.png?alt=media&token=a11ece7a-c622-41dd-8f1c-884e434a8bf8", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 400,
                        protein: 20,
                        carbohydrates: 50,
                        fat: 15
                    ),
                    mealType: .lunch,
                    tips: "Calienta el tempeh en una sartén durante unos minutos para un mejor sabor y textura."
                ),
                snack: Recipe(
                    name: "Frutas frescas (uvas, rodajas de naranja)",
                    ingredients: ["Uvas", "Naranja"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD3M.png?alt=media&token=da1dfd94-853e-448b-8170-0e3301cdfc50", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 150,
                        protein: 2,
                        carbohydrates: 35,
                        fat: 1
                    ),
                    mealType: .snack,
                    tips: "Sirve las frutas bien frías para un snack refrescante."
                ),
                dinner: Recipe(
                    name: "Salteado de tofu con verduras (brócoli, pimientos, zanahorias) y arroz integral",
                    ingredients: ["Tofu", "Brócoli", "Pimientos", "Zanahorias", "Arroz integral", "Aceite de oliva", "Salsa de soja"],
                    preparationTime: 30,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD3C.png?alt=media&token=0ad265e9-3b3d-4bae-9602-156596790ddc", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 500,
                        protein: 25,
                        carbohydrates: 60,
                        fat: 20
                    ),
                    mealType: .dinner,
                    tips: "Marina el tofu en salsa de soja durante 15 minutos antes de cocinar para un mejor sabor."
                ),
                midMorningSnack: Recipe(
                    name: "Puñado de nueces mixtas",
                    ingredients: ["Nueces mixtas"],
                    preparationTime: 1,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD3MM.png?alt=media&token=e4544e40-804a-4682-9eef-a688ecc558b4", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 200,
                        protein: 5,
                        carbohydrates: 10,
                        fat: 18
                    ),
                    mealType: .snack,
                    tips: "Opta por nueces sin sal para un snack más saludable."
                ),
                nutritionalGoals: NutritionalValues(
                    calories: 1600,
                    protein: 60,
                    carbohydrates: 195,
                    fat: 74
                )
            ),
            DietDay(
                day: .thursday,
                breakfast: Recipe(
                    name: "Porridge de quinoa con leche de coco, plátano en rodajas y nueces",
                    ingredients: ["Quinoa", "Leche de coco", "Plátano", "Nueces"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD4D.png?alt=media&token=04700a73-66bd-423c-92f7-c3a1e6c8141d", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 350,
                        protein: 10,
                        carbohydrates: 50,
                        fat: 15
                    ),
                    mealType: .breakfast,
                    tips: "Cocina la quinoa en leche de coco para una textura más cremosa y un sabor más rico."
                ),
                lunch: Recipe(
                    name: "Ensalada de lentejas con remolacha, rúcula, nueces y aderezo de limón",
                    ingredients: ["Lentejas", "Remolacha", "Rúcula", "Nueces", "Limón", "Aceite de oliva"],
                    preparationTime: 20,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD4A.png?alt=media&token=a704b718-3295-46ca-9a76-e297094b11d4", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 400,
                        protein: 18,
                        carbohydrates: 45,
                        fat: 15
                    ),
                    mealType: .lunch,
                    tips: "Añade el aderezo de limón justo antes de servir para mantener la ensalada fresca."
                ),
                snack: Recipe(
                    name: "Smoothie de frutas (mango, piña, espinacas, leche de almendra)",
                    ingredients: ["Mango", "Piña", "Espinacas", "Leche de almendra"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD4M.png?alt=media&token=be643ca7-d21b-45f2-8f97-77d01af599cd", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 200,
                        protein: 4,
                        carbohydrates: 40,
                        fat: 5
                    ),
                    mealType: .snack,
                    tips: "Añade un poco de hielo para una textura más espesa y refrescante."
                ),
                dinner: Recipe(
                    name: "Berenjena rellena con quinoa y verduras, acompañada de ensalada de espinacas",
                    ingredients: ["Berenjena", "Quinoa", "Verduras mixtas", "Espinacas"],
                    preparationTime: 40,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD4C.png?alt=media&token=1f68162a-7914-4912-95db-5e321b76da23", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 500,
                        protein: 20,
                        carbohydrates: 60,
                        fat: 20
                    ),
                    mealType: .dinner,
                    tips: "Hornea las berenjenas hasta que estén bien tiernas antes de rellenarlas."
                ),
                midMorningSnack: Recipe(
                    name: "Tazón de yogur de soja con fresas y almendras en rodajas",
                    ingredients: ["Yogur de soja", "Fresas", "Almendras"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD4MM.jpg?alt=media&token=f3496e7f-dd1d-457d-ac40-664c8bc922c2", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 200,
                        protein: 8,
                        carbohydrates: 25,
                        fat: 10
                    ),
                    mealType: .snack,
                    tips: "Añade las almendras justo antes de servir para mantener su textura crujiente."
                ),
                nutritionalGoals: NutritionalValues(
                    calories: 1650,
                    protein: 60,
                    carbohydrates: 220,
                    fat: 65
                )
            ),
            DietDay(
                day: .friday,
                breakfast: Recipe(
                    name: "Pan integral tostado con mantequilla de almendra y plátano en rodajas",
                    ingredients: ["Pan integral", "Mantequilla de almendra", "Plátano"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD5D.png?alt=media&token=e2221a9b-0852-417e-9a62-c23f9df6ec0b", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 350,
                        protein: 10,
                        carbohydrates: 45,
                        fat: 15
                    ),
                    mealType: .breakfast,
                    tips: "Usa plátanos maduros para un sabor más dulce y fácil de esparcir."
                ),
                lunch: Recipe(
                    name: "Ensalada de garbanzos con espinacas, aguacate, pepino y aderezo de tahini",
                    ingredients: ["Garbanzos", "Espinacas", "Aguacate", "Pepino", "Tahini", "Limón", "Aceite de oliva"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD5A.png?alt=media&token=045afd38-ea68-46c9-ac16-1cb3d5f803d5", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 450,
                        protein: 15,
                        carbohydrates: 40,
                        fat: 25
                    ),
                    mealType: .lunch,
                    tips: "Mezcla bien el tahini con limón y un poco de agua para obtener una consistencia cremosa."
                ),
                snack: Recipe(
                    name: "Barrita de proteínas vegana",
                    ingredients: ["Proteína en polvo vegana", "Mantequilla de almendra", "Sirope de agave", "Avena"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD5M.png?alt=media&token=ae299d42-3465-4680-a1bd-822a2d1c040d", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 200,
                        protein: 15,
                        carbohydrates: 20,
                        fat: 8
                    ),
                    mealType: .snack,
                    tips: "Guarda las barritas en el refrigerador para que mantengan su forma y frescura."
                ),
                dinner: Recipe(
                    name: "Chili vegano con frijoles rojos, tomates y maíz, servido con arroz integral",
                    ingredients: ["Frijoles rojos", "Tomates", "Maíz", "Arroz integral", "Cebolla", "Ajo", "Especias (comino, chile en polvo)"],
                    preparationTime: 40,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD5C.png?alt=media&token=92cc27d7-5407-45f6-9981-2f57ba0a2e81", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 500,
                        protein: 20,
                        carbohydrates: 70,
                        fat: 10
                    ),
                    mealType: .dinner,
                    tips: "Cocina a fuego lento para que los sabores se mezclen bien y el chili quede más sabroso."
                ),
                midMorningSnack: Recipe(
                    name: "Frutas secas (pasas, dátiles)",
                    ingredients: ["Pasas", "Dátiles"],
                    preparationTime: 1,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD5MM.png?alt=media&token=37374cea-fe6c-4119-a847-a1f5a918842a", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 150,
                        protein: 2,
                        carbohydrates: 35,
                        fat: 1
                    ),
                    mealType: .snack,
                    tips: "Mezcla diferentes tipos de frutas secas para una variedad de sabores y texturas."
                ),
                nutritionalGoals: NutritionalValues(
                    calories: 1650,
                    protein: 60,
                    carbohydrates: 210,
                    fat: 60
                )
            ),
            DietDay(
                day: .saturday,
                breakfast: Recipe(
                    name: "Tazón de açai con frutas frescas y granola sin azúcar",
                    ingredients: ["Açai", "Frutas frescas", "Granola sin azúcar"],
                    preparationTime: 10,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD6D.png?alt=media&token=ee93b385-1dd4-4f4e-9a27-a6c4bde55144", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 300,
                        protein: 5,
                        carbohydrates: 55,
                        fat: 10
                    ),
                    mealType: .breakfast,
                    tips: "Utiliza frutas frescas de temporada para obtener el mejor sabor y mayor cantidad de nutrientes."
                ),
                lunch: Recipe(
                    name: "Ensalada de tofu con kale, zanahoria, pepino y aderezo de tahini",
                    ingredients: ["Tofu", "Kale", "Zanahoria", "Pepino", "Tahini", "Limón", "Aceite de oliva"],
                    preparationTime: 15,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD6A.png?alt=media&token=8095d94e-e41a-48ec-b050-81cf7e5cf6a2", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 400,
                        protein: 20,
                        carbohydrates: 35,
                        fat: 20
                    ),
                    mealType: .lunch,
                    tips: "Marina el tofu en el aderezo de tahini para un sabor más intenso."
                ),
                snack: Recipe(
                    name: "Palitos de pepino y pimientos con guacamole",
                    ingredients: ["Pepino", "Pimientos", "Aguacate", "Lima", "Sal"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD6M.png?alt=media&token=a4f68769-0f4c-4b5f-b3af-c1c12cfc9a7b", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 150,
                        protein: 2,
                        carbohydrates: 15,
                        fat: 10
                    ),
                    mealType: .snack,
                    tips: "Prepara el guacamole justo antes de servir para mantener su frescura y sabor."
                ),
                dinner: Recipe(
                    name: "Curry de garbanzos con espinacas y arroz basmati",
                    ingredients: ["Garbanzos", "Espinacas", "Arroz basmati", "Tomates", "Cebolla", "Ajo", "Especias (curry, cúrcuma, comino)"],
                    preparationTime: 35,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD6C.png?alt=media&token=351c8ebe-7888-423a-8ff6-34cadc0bf3c5", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 500,
                        protein: 18,
                        carbohydrates: 70,
                        fat: 15
                    ),
                    mealType: .dinner,
                    tips: "Cocina el curry a fuego lento para que los sabores se mezclen y el plato quede más sabroso."
                ),
                midMorningSnack: Recipe(
                    name: "Pudín de semillas de chía (leche de almendra, semillas de chía, extracto de vainilla)",
                    ingredients: ["Leche de almendra", "Semillas de chía", "Extracto de vainilla"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD6MM.png?alt=media&token=62b828d6-b920-4b6d-bbee-3a770bad1a56", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 200,
                        protein: 6,
                        carbohydrates: 20,
                        fat: 10
                    ),
                    mealType: .snack,
                    tips: "Deja reposar el pudín de chía en el refrigerador durante al menos 4 horas o toda la noche para obtener una mejor textura."
                ),
                nutritionalGoals: NutritionalValues(
                    calories: 1550,
                    protein: 51,
                    carbohydrates: 195,
                    fat: 65
                )
            ),
            DietDay(
                day: .sunday,
                breakfast: Recipe(
                    name: "Porridge de avena con leche de almendra, manzana rallada, canela y nueces",
                    ingredients: ["Avena", "Leche de almendra", "Manzana", "Canela", "Nueces"],
                    preparationTime: 10,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD7D.png?alt=media&token=6052784c-e846-4332-a2a0-9ca01081cced", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 350,
                        protein: 8,
                        carbohydrates: 60,
                        fat: 12
                    ),
                    mealType: .breakfast,
                    tips: "Añade la manzana rallada y las nueces justo antes de servir para mantener la textura crujiente."
                ),
                lunch: Recipe(
                    name: "Ensalada de quinoa con garbanzos, tomates cherry, pepino y aderezo de limón",
                    ingredients: ["Quinoa", "Garbanzos", "Tomates cherry", "Pepino", "Limón", "Aceite de oliva"],
                    preparationTime: 20,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD7A.png?alt=media&token=3ca3e8aa-6642-420e-a247-ea017c79fbf3", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 400,
                        protein: 15,
                        carbohydrates: 55,
                        fat: 15
                    ),
                    mealType: .lunch,
                    tips: "Deja enfriar la quinoa antes de mezclarla con los demás ingredientes para una ensalada más refrescante."
                ),
                snack: Recipe(
                    name: "Tostadas de arroz con mantequilla de maní",
                    ingredients: ["Tostadas de arroz", "Mantequilla de maní"],
                    preparationTime: 5,
                    servings: 1,
                    image: "thttps://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD7M.png?alt=media&token=14bfcdf0-a18e-4631-9539-a62fe7121dc6", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 180,
                        protein: 6,
                        carbohydrates: 20,
                        fat: 9
                    ),
                    mealType: .snack,
                    tips: "Utiliza mantequilla de maní natural para evitar azúcares y aceites añadidos."
                ),
                dinner: Recipe(
                    name: "Tacos de lentejas con tortillas de maíz, lechuga, tomate y aguacate",
                    ingredients: ["Lentejas", "Tortillas de maíz", "Lechuga", "Tomate", "Aguacate"],
                    preparationTime: 30,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD7C.png?alt=media&token=7b3515b3-3aba-444e-9aed-8f7afd01fae4", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 450,
                        protein: 18,
                        carbohydrates: 65,
                        fat: 15
                    ),
                    mealType: .dinner,
                    tips: "Calienta las tortillas antes de servir para que estén más suaves y sabrosas."
                ),
                midMorningSnack: Recipe(
                    name: "Yogur de coco con frutos secos",
                    ingredients: ["Yogur de coco", "Frutos secos"],
                    preparationTime: 5,
                    servings: 1,
                    image: "https://firebasestorage.googleapis.com/v0/b/buildme-8e243.appspot.com/o/Recipes%2Fvegan%2FDVD7MM.png?alt=media&token=32fc7d33-135b-4186-a529-86538c874023", // URL o nombre de imagen
                    nutritionalValues: NutritionalValues(
                        calories: 200,
                        protein: 4,
                        carbohydrates: 20,
                        fat: 12
                    ),
                    mealType: .snack,
                    tips: "Añade los frutos secos justo antes de consumir para mantener su textura crujiente."
                ),
                nutritionalGoals: NutritionalValues(
                    calories: 1580,
                    protein: 51,
                    carbohydrates: 220,
                    fat: 63
                )
            ),
        ]
    )
}
