//
//  SceneDelegate.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import UIKit

/// El `SceneDelegate` del proyecto BuildMe_Entrenador.
///
/// Esta clase maneja el ciclo de vida de la escena y configura la ventana principal de la aplicación.
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    /// La ventana principal de la aplicación.
    var window: UIWindow?
    
    /// Este método es llamado cuando la escena está a punto de conectarse a una sesión.
    ///
    /// Utiliza este método para configurar y adjuntar la `UIWindow` a la `UIWindowScene` proporcionada.
    ///
    /// - Parameters:
    ///   - scene: La escena que se está conectando.
    ///   - session: La sesión de la escena.
    ///   - connectionOptions: Opciones adicionales para la conexión de la escena.
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        let nav = UINavigationController(rootViewController: TabBarController())
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
    }
    
    /// Este método es llamado cuando la escena está siendo liberada por el sistema.
    ///
    /// Utiliza este método para liberar cualquier recurso asociado con esta escena que puede ser recreado la próxima vez que la escena se conecte.
    ///
    /// - Parameter scene: La escena que se desconectó.
    func sceneDidDisconnect(_ scene: UIScene) {
        // Libera cualquier recurso asociado con esta escena.
    }
    
    /// Este método es llamado cuando la escena se ha movido de un estado inactivo a un estado activo.
    ///
    /// Utiliza este método para reiniciar cualquier tarea que se pausó (o que no se inició) cuando la escena estaba inactiva.
    ///
    /// - Parameter scene: La escena que se volvió activa.
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Reinicia cualquier tarea que se pausó cuando la escena estaba inactiva.
    }
    
    /// Este método es llamado cuando la escena está a punto de moverse de un estado activo a un estado inactivo.
    ///
    /// Utiliza este método para pausar tareas en curso, deshabilitar temporizadores, etc.
    ///
    /// - Parameter scene: La escena que se volverá inactiva.
    func sceneWillResignActive(_ scene: UIScene) {
        // Pausa las tareas en curso, deshabilita temporizadores, etc.
    }
    
    /// Este método es llamado cuando la escena está a punto de pasar del fondo al primer plano.
    ///
    /// Utiliza este método para deshacer los cambios realizados al entrar en el fondo.
    ///
    /// - Parameter scene: La escena que entrará en primer plano.
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Deshaz los cambios realizados al entrar en el fondo.
    }
    
    /// Este método es llamado cuando la escena pasa del primer plano al fondo.
    ///
    /// Utiliza este método para guardar datos, liberar recursos compartidos y almacenar suficiente estado específico de la escena
    /// para restaurar la escena a su estado actual.
    ///
    /// - Parameter scene: La escena que entrará en el fondo.
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Guarda datos, libera recursos compartidos y almacena suficiente estado específico de la escena.
    }
    
}
