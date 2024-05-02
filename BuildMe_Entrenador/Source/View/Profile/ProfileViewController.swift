//
//  ProfileViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import UIKit
import FirebaseAuth
import JGProgressHUD

class ProfileViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var subViewProfile: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var changePasswordButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var editProfileButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    // MARK: - Variables
    let hud = JGProgressHUD()
    let viewmodel = ProfileViewModel()
    var user: User?
    var isEditingProfile = false
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        confInitial()
        viewmodel.getUser { [weak self] user in
            guard let self = self, let user = user else { return }
            self.user = user
            DispatchQueue.main.async {
                self.confUser() // Llama solo si user tiene un valor
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        confUser()
    }
    // MARK: - Functions
    private func confInitial() {
        view.applyBlueRedGradient()
        subViewProfile.layer.cornerRadius = 15
        confProfileImageView()
        viewmodel.delegate = self
        nameTextField.setupLeftSideImage(systemImageNamed: "person")
        usernameTextField.setupLeftSideImage(systemImageNamed: "person.crop.square")
        emailTextField.setupLeftSideImage(systemImageNamed: "envelope")
        nameTextField.isEnabled = false
        usernameTextField.isEnabled = false
        emailTextField.isEnabled = false
    }
    private func confProfileImageView() {
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width / 2
        profileImageView.clipsToBounds = true
        profileImageView.layer.borderColor = UIColor.white.cgColor
        profileImageView.layer.borderWidth = 7
    }
    private func confUser() {
        DispatchQueue.global().async {
            if let imageURL = self.user?.profileImageURL,
               let url = URL(string: imageURL),
               let data = try? Data(contentsOf: url),
               let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.profileImageView.image = image
                }
            }
        }
        nameTextField.text = user?.name
        usernameTextField.text = user?.username
        emailTextField.text = user?.email
    }
    // MARK: - Actions
    @IBAction func changePasswordAction(_ sender: UIButton) {
        viewmodel.resetPassword()
    }
    @IBAction func editProfileAction(_ sender: Any) {
        viewmodel.editProfile()
    }
    @IBAction func logoutAction(_ sender: UIButton) {
        viewmodel.logout()
    }
}

extension ProfileViewController: ProfileDelegate {
    func updateUser(user: User) {
        print("Implementando user en el viewcontroller")
        self.user = user
        confUser()
    }
    
    func showAlert(title: String, message: String, isError: Bool) {
        DispatchQueue.main.async {
            let hud = JGProgressHUD()
            hud.indicatorView = isError ? JGProgressHUDErrorIndicatorView() :
            JGProgressHUDSuccessIndicatorView()
            hud.textLabel.text = title
            hud.detailTextLabel.text = message
            hud.interactionType = .blockAllTouches
            hud.show(in: self.view)
            hud.dismiss(afterDelay: 3, animated: true)
        }
    }
    
    func presentLoginScreen() {
        let controller = LoginViewController()
        let nav = UINavigationController(rootViewController: controller)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
    }
    
    func editProfile() {
        
        isEditingProfile.toggle()
        
        if isEditingProfile {
            nameTextField.isEnabled = true
            usernameTextField.isEnabled = true
            changePasswordButton.isEnabled = false
            logoutButton.isEnabled = false
            let attributes: [NSAttributedString.Key: Any] = [
                .font: UIFont.boldSystemFont(ofSize: 20)
            ]
            let attributedTitle = NSAttributedString(string: "Actualizar usuario", attributes: attributes)
            editProfileButton.setAttributedTitle(attributedTitle, for: .normal)
        } else {
            nameTextField.isEnabled = false
            usernameTextField.isEnabled = false
            changePasswordButton.isEnabled = true
            logoutButton.isEnabled = true
            let attributes: [NSAttributedString.Key: Any] = [
                .font: UIFont.boldSystemFont(ofSize: 20)
            ]
            let attributedTitle = NSAttributedString(string: "Editar Perfil", attributes: attributes)
            editProfileButton.setAttributedTitle(attributedTitle, for: .normal)
            
            viewmodel.updateProfile(name: nameTextField.text, username: usernameTextField.text, email: emailTextField.text)
        }
    }
    
    func presentLogout() {
        let alert = UIAlertController(title: nil, message: "¿Estás seguro de que quieres cerrar sesión?", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Cerrar Sesión", style: .destructive, handler: { _ in
            self.dismiss(animated: true) {
                self.viewmodel.makeLogout()
            }
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
