//
//  TabBarController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import UIKit
import Firebase
import JGProgressHUD

protocol ControllerDelegate: AnyObject {
    func showAlert(title: String, message: String)
    func presentLoginScreen()
}

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTabs()
        
        getAndShowCurrentUserInfo()
    }
    
    private func getAndShowCurrentUserInfo() {
        guard let user = Auth.auth().currentUser else {
          // User is not logged in, handle appropriately (e.g., present login screen)
          self.presentLoginScreen()
          return
        }

        let databaseRef = Database.database().reference().child("Users").child("Trainer").child(user.uid) // Assuming "Trainer" is a child node

        databaseRef.observeSingleEvent(of: .value) { [weak self] snapshot, _ in
          guard let self = self else { return }

          if !snapshot.exists() {
            print("User data not found")
            // Handle user data not found (e.g., log error)
            return
          }

          guard let userData = snapshot.value as? [String: Any] else {
            print("Invalid user data format")
            // Handle invalid data format (e.g., log error)
            return
          }

          guard let name = userData["name"] as? String else {
            print("Missing name or profileImageURL field in user data")
            // Handle missing fields (e.g., show default message)
            return
          }

          // Update the UI with the retrieved name and profileImageURL (e.g., display in a label or image view)
          // You can use this information for further UI updates as needed
            self.showAlert(title: "Bienvenido \(name) ", message: "¡Que gusto volver a verte!")
        }
      }
    
    private func setupTabs() {
        let users = self.createNav(with: "Usuarios", and: UIImage(systemName: "person.3.sequence.fill"), vc: UsersViewController())
        let workout = self.createNav(with: "Rutinas", and: UIImage(systemName: "figure.strengthtraining.traditional"), vc: WorkoutViewController())
        let diet = self.createNav(with: "Dietas", and: UIImage(systemName: "carrot.fill"), vc: DietViewController())
        let profile = self.createNav(with: "Perfil", and: UIImage(systemName: "person.crop.circle"), vc: ProfileViewController())
        
        self.setViewControllers([users,workout,diet,profile], animated: true)
        
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = .black
        self.tabBar.unselectedItemTintColor = .lightGray
    }
    
    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        return nav
    }
    
}

extension TabBarController: ControllerDelegate {
    func presentLoginScreen() {
        let controller = LoginViewController()
        let nav = UINavigationController(rootViewController: controller)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
    }
    
    func showAlert(title: String, message: String) {
      DispatchQueue.main.async {
        let hud = JGProgressHUD()
        
        // Reduce image size before setting it to the indicatorView
        let image = UIImage(named: "TransparentLogo")!.scaled(to: CGSize(width: 150.0, height: 150.0))
        hud.indicatorView = JGProgressHUDImageIndicatorView(image: image)
        
        hud.textLabel.text = title
        hud.detailTextLabel.text = message
        hud.interactionType = .blockAllTouches
        hud.show(in: self.view)
        hud.dismiss(afterDelay: 6, animated: true)
      }
    }
}
