//
//  AppDelegate.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import UIKit
import Firebase

/// El `AppDelegate` del proyecto BuildMe_Entrenador.
///
/// Esta clase maneja los eventos principales del ciclo de vida de la aplicación y configura Firebase al iniciar.
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    /// Este método es llamado cuando la aplicación ha terminado de lanzarse.
    ///
    /// Aquí es donde puedes realizar la configuración inicial de tu aplicación, como la configuración de Firebase.
    ///
    /// - Parameters:
    ///   - application: La instancia singleton de la aplicación.
    ///   - launchOptions: Un diccionario que contiene la información de lanzamiento de la aplicación, si está disponible.
    /// - Returns: `true` si el lanzamiento se completó exitosamente, `false` en caso contrario.
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }

    // MARK: UISceneSession Lifecycle

    /// Este método es llamado cuando se está creando una nueva sesión de escena.
    ///
    /// Utiliza este método para seleccionar una configuración para crear la nueva escena.
    ///
    /// - Parameters:
    ///   - application: La instancia singleton de la aplicación.
    ///   - connectingSceneSession: La sesión de escena que está siendo creada.
    ///   - options: Opciones adicionales que especifican detalles sobre la configuración de la conexión.
    /// - Returns: La configuración de la escena para la nueva sesión.
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    /// Este método es llamado cuando el usuario descarta una sesión de escena.
    ///
    /// Si se descartaron sesiones mientras la aplicación no estaba en ejecución, este método se llamará poco después de `application:didFinishLaunchingWithOptions`.
    /// Utiliza este método para liberar cualquier recurso específico de las escenas descartadas, ya que no volverán.
    ///
    /// - Parameters:
    ///   - application: La instancia singleton de la aplicación.
    ///   - sceneSessions: Un conjunto de sesiones de escena que fueron descartadas.
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}
