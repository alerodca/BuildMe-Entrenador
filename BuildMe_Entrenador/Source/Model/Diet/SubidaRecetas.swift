//
//  SubidaRecetas.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 1/5/24.
//

import Foundation

class SubidaRecetas {
    let recetaDesayuno: Recipe
    let recetaMediaManana: Recipe
    let recetaAlmuerzo: Recipe
    let recetaMerienda: Recipe
    let recetaCena: Recipe
    let objetivosNutricion: NutritionGoals
    let planDiario: DailyMealPlan
    
    init() {
        recetaDesayuno = Recipe(
            name: "Tostadas de aguacate y tomate",
            ingredients: ["Pan integral", "Aguacate", "Tomate", "Aceite de oliva", "Sal", "Pimienta"],
            instructions: "Tuesta el pan integral y unta el aguacate sobre las tostadas. Agrega rodajas de tomate por encima. Condimenta con un chorrito de aceite de oliva, sal y pimienta al gusto.",
            preparationTime: 10,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 300, proteins: 7, carbohydrates: 25, fats: 20),
            tips: ["Puedes agregar un poco de ajo en polvo para darle más sabor."],
            image: "tostadas_aguacate_tomate.jpg",
            mealType: .breakfast
        )
        
        recetaMediaManana = Recipe(
            name: "Fruta fresca con nueces",
            ingredients: ["Fruta de temporada (por ejemplo, manzana, pera, naranja)", "Nueces (almendras, nueces, avellanas, etc.)"],
            instructions: "Corta la fruta en trozos y sírvela en un plato. Acompaña con un puñado de nueces.",
            preparationTime: 5,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 200, proteins: 5, carbohydrates: 20, fats: 10),
            tips: ["Elige frutas frescas de temporada para obtener más sabor y nutrientes."],
            image: "fruta_nueces.jpg",
            mealType: .brunch // Puedes considerar esto como media mañana
        )
        
        recetaAlmuerzo = Recipe(
            name: "Ensalada griega",
            ingredients: ["Lechuga", "Tomate", "Pepino", "Aceitunas negras", "Queso feta", "Aceite de oliva", "Vinagre balsámico", "Orégano", "Sal", "Pimienta"],
            instructions: "Lava y corta las verduras en trozos. Mezcla todos los ingredientes en un bol grande. Aliña con aceite de oliva, vinagre balsámico, orégano, sal y pimienta al gusto.",
            preparationTime: 15,
            servings: 2,
            nutritionalValue: NutritionalValue(calories: 250, proteins: 8, carbohydrates: 15, fats: 18),
            tips: ["Añade un poco de pan integral tostado para una comida más completa."],
            image: "ensalada_griega.jpg",
            mealType: .lunch
        )
        
        recetaMerienda = Recipe(
            name: "Yogur griego con miel y nueces",
            ingredients: ["Yogur griego natural", "Miel", "Nueces"],
            instructions: "Sirve el yogur griego en un bol y añade un chorrito de miel por encima. Espolvorea con nueces picadas.",
            preparationTime: 5,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 250, proteins: 15, carbohydrates: 20, fats: 12),
            tips: ["El yogur griego es rico en proteínas y probióticos, y la miel y las nueces le dan un toque dulce y crujiente."],
            image: "yogur_miel_nueces.jpg",
            mealType: .snack // Considerado como merienda
        )
        
        recetaCena = Recipe(
            name: "Pescado al horno con verduras",
            ingredients: ["Filete de pescado blanco", "Calabacín", "Pimiento rojo", "Cebolla", "Aceite de oliva", "Limón", "Sal", "Pimienta", "Tomillo"],
            instructions: "Coloca el pescado en una bandeja para hornear y añade las verduras cortadas en trozos alrededor. Riega con aceite de oliva, exprime el limón, y espolvorea sal, pimienta y tomillo. Hornea a 180°C durante 20-25 minutos o hasta que el pescado esté cocido.",
            preparationTime: 30,
            servings: 1,
            nutritionalValue: NutritionalValue(calories: 350, proteins: 25, carbohydrates: 20, fats: 15),
            tips: ["Puedes sustituir el pescado blanco por salmón si lo prefieres."],
            image: "pescado_horno_verduras.jpg",
            mealType: .dinner
        )
        
        objetivosNutricion = NutritionGoals(totalCalories: 1500, proteinGrams: 60, carbohydrateGrams: 180, fatGrams: 60, fiberGrams: 30)
        
        planDiario = DailyMealPlan(
            dayOfWeek: .monday,
            breakfast: recetaDesayuno,
            brunch: recetaMediaManana,
            lunch: recetaAlmuerzo,
            afternoonSnack: recetaMerienda,
            dinner: recetaCena,
            dailyNutritionGoals: objetivosNutricion,
            notes: "Recuerda beber suficiente agua durante el día.",
            nutritionalValues: NutritionalValues(totalCalories: 1350, proteinGrams: 60, carbohydrateGrams: 100, fatGrams: 75)
        )
    }
}

