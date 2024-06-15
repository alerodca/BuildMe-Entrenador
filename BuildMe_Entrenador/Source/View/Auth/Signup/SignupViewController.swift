//
//  SignupViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 29/4/24.
//

import UIKit
import JGProgressHUD

/// Un controlador de vista responsable de manejar la creación de cuentas de usuario.
class SignupViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    /// El campo de texto para ingresar el nombre.
    @IBOutlet weak var nameTextField: UITextField!
    
    /// El campo de texto para ingresar el nombre de usuario.
    @IBOutlet weak var usernameTextField: UITextField!
    
    /// El campo de texto para ingresar el correo electrónico.
    @IBOutlet weak var emailTextField: UITextField!
    
    /// El campo de texto para ingresar la contraseña.
    @IBOutlet weak var passwordTextField: UITextField!
    
    /// El botón para seleccionar una imagen.
    @IBOutlet weak var selectImageButton: UIButton!
    
    /// El botón para iniciar sesión.
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: - Variables
    
    /// Un HUD (Heads-Up Display) para mostrar indicadores de carga.
    let hud = JGProgressHUD()
    
    /// El modelo de vista responsable de las operaciones relacionadas con la creación de cuentas.
    let viewmodel = SignupViewModel()
    
    /// Una bandera que indica si se hizo clic en el icono del ojo para mostrar u ocultar la contraseña.
    var iconClick = false
    
    /// La vista de imagen para el icono del ojo.
    var imageIcon = UIImageView()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialConfigure()
    }
    
    // MARK: - Functions
    
    /// Configura la configuración inicial y los elementos de la interfaz de usuario.
    private func initialConfigure() {
        view.applyBlueRedGradient()
        
        // Delegar los campos de texto al propio controlador de vista
        nameTextField.delegate = self
        usernameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        // Configuración del icono del ojo para la visibilidad de la contraseña
        imageIcon.image = UIImage(named: "closeEye")
        let contentView = UIView()
        contentView.addSubview(imageIcon)
        contentView.frame = CGRect(
            x: 0,
            y: 0,
            width: UIImage(named: "closeEye")!.size.width,
            height: UIImage(named: "closeEye")!.size.height
        )
        imageIcon.frame = CGRect(
            x: -10,
            y: 0,
            width: UIImage(named: "closeEye")!.size.width,
            height: UIImage(named: "closeEye")!.size.height
        )
        passwordTextField.rightView = contentView
        passwordTextField.rightViewMode = .always
        
        // Agregar gesto de tap al icono del ojo
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        imageIcon.isUserInteractionEnabled = true
        imageIcon.addGestureRecognizer(tapGestureRecognizer)
        
        // Ocultar el botón de retroceso del navigation controller
        self.navigationItem.hidesBackButton = true
        
        // Delegar el view model y el delegado del selector de imagen al propio controlador de vista
        viewmodel.delegate = self
        viewmodel.pickerDelegate = self
    }
    
    // MARK: - Actions
    
    /// Permite al usuario seleccionar una foto.
    @IBAction func selectPhoto(_ sender: UIButton) {
        viewmodel.selectImage()
    }
    
    /// Crea una cuenta con los datos ingresados.
    @IBAction func createAccountWithEmailAndPassword(_ sender: UIButton) {
        viewmodel.createAccount(name: nameTextField.text, username: usernameTextField.text, email: emailTextField.text, password: passwordTextField.text)
    }
    
    /// Navega a la pantalla de inicio de sesión.
    @IBAction func navigateToLogin(_ sender: UIButton) {
        viewmodel.popToLogin()
    }
    
    /// Cambia la visibilidad de la contraseña cuando se toca el icono del ojo.
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        if iconClick {
            iconClick = false
            tappedImage.image = UIImage(named: "openEye")
            passwordTextField.isSecureTextEntry = false
        } else {
            iconClick = true
            tappedImage.image = UIImage(named: "closeEye")
            passwordTextField.isSecureTextEntry = true
        }
    }
}

// MARK: - Extension UITextFieldDelegate

extension SignupViewController: UITextFieldDelegate {
    
    // MARK: UITextFieldDelegate
    
    /// Este método se llama cuando se toca el botón de retorno en el teclado.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Oculta el teclado
        textField.resignFirstResponder()
        return true
    }
    
    /// Este método se llama cuando se toca fuera de los campos de texto.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Oculta el teclado
        view.endEditing(true)
    }
}

// MARK: - Extension AuthControllerDelegate, ImagePickerDelegate

extension SignupViewController: AuthControllerDelegate, ImagePickerDelegate {
    
    // MARK: AuthControllerDelegate
    
    /// Muestra un indicador de carga.
    func showIndicator() {
        DispatchQueue.main.async {
            self.hud.textLabel.text = "Iniciando Sesión"
            self.hud.detailTextLabel.text = "Espere por favor"
            self.hud.show(in: self.view)
        }
    }
    
    /// Oculta el indicador de carga.
    func hideIndicator() {
        DispatchQueue.main.async {
            self.hud.dismiss(animated: true)
        }
    }
    
    /// Habilita los botones.
    func enableButtons() {
        selectImageButton.isEnabled = true
        loginButton.isEnabled = true
    }
    
    /// Deshabilita los botones.
    func disableButtons() {
        selectImageButton.isEnabled = false
        loginButton.isEnabled = false
    }
    
    /// Presenta el selector de imagen.
    func presentImagePicker() {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true)
    }
    
    /// Completa la autenticación y cierra la pantalla de creación de cuenta.
    func authComplete() {
        dismiss(animated: true)
    }
    
    /// Navega a la pantalla anterior.
    func navigate() {
        navigationController?.popViewController(animated: true)
    }
    
    /// Muestra una alerta con el título y el mensaje proporcionados.
    func showAlert(title: String, message: String, isError: Bool) {
        DispatchQueue.main.async {
            let hud = JGProgressHUD()
            hud.indicatorView = isError ? JGProgressHUDErrorIndicatorView() : JGProgressHUDSuccessIndicatorView()
            hud.textLabel.text = title
            hud.detailTextLabel.text = message
            hud.interactionType = .blockAllTouches
            hud.show(in: self.view)
            hud.dismiss(afterDelay: 3, animated: true)
        }
    }
}

// MARK: - Extension UIImagePickerControllerDelegate, UINavigationControllerDelegate

extension SignupViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: - UIImagePickerControllerDelegate
    
    /// Este método se llama cuando se selecciona una imagen desde el controlador de selección de imágenes.
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // Se cierra el controlador de selección de imágenes
        picker.dismiss(animated: true)
        
        // Se obtiene la imagen seleccionada del diccionario de información
        if let image = info[.originalImage] as? UIImage {
            // Se llama al método del view model para guardar la imagen seleccionada
            viewmodel.saveImage(image)
        }
    }
    
    /// Este método se llama cuando se cancela la selección de imagen desde el controlador de selección de imágenes.
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Se cierra el controlador de selección de imágenes y se muestra una alerta indicando que no se ha seleccionado ninguna imagen
        picker.dismiss(animated: true) {
            self.showAlert(title: "Imagen", message: "Ninguna imagen seleccionada.", isError: false)
        }
    }
}

