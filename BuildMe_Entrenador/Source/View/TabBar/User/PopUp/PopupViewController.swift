//
//  PopupViewController.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 3/6/24.
//

import UIKit

/**
 Este archivo PopupViewController.swift contiene una clase PopupViewController que se utiliza para mostrar una ventana emergente con detalles sobre una tarea completada. Aquí hay un resumen de su estructura y funcionalidad:
 Propósito: Mostrar una ventana emergente con detalles sobre una tarea completada, incluyendo observaciones y fecha.
 Propiedades:
    - textView: UITextView para mostrar las observaciones de la tarea.
    - datePicker: UIDatePicker para mostrar la fecha de la tarea.
    - placeholderText: Texto de marcador de posición para el UITextView.
    - completedTask: La tarea completada que se mostrará en la ventana emergente.
 Inicializadores:
    - init(completedTask:): Inicializa la clase con una tarea completada.
 Lifecycle Methods:
    - viewDidLoad(): Configura las vistas y establece los datos iniciales.
 Métodos Privados:
    - setupViews(): Configura las vistas de la ventana emergente, incluyendo etiquetas, campos de texto y botones.
    - configureTextView(): Configura el UITextView para manejar el texto de marcador de posición.
    - populateData(): Rellena los campos de texto con los datos de la tarea completada.
 Acciones:
    - cancelButtonTapped(): Método llamado al tocar el botón "Cerrar" para cerrar la ventana emergente.
 Extensiones:
    - extension PopupViewController: UITextViewDelegate: Implementa métodos del UITextViewDelegate para manejar los eventos de edición del UITextView.*/

class PopupViewController: UIViewController {
    
    // MARK: - Properties
    private let textView = UITextView()
    private let datePicker = UIDatePicker()
    private let placeholderText = "Si tienes alguna observación puedes ponerla aquí..."
    let placeholderColor = UIColor.lightGray
    
    private var completedTask: TaskCompleted
    
    // MARK: - Constructor
    init(completedTask: TaskCompleted) {
        self.completedTask = completedTask
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        configureTextView()
        populateData()
    }
    
    // MARK: - Private Methods
    private func setupViews() {
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        let popupView = UIView()
        popupView.translatesAutoresizingMaskIntoConstraints = false
        popupView.backgroundColor = .white
        popupView.layer.cornerRadius = 10
        view.addSubview(popupView)
        
        NSLayoutConstraint.activate([
            popupView.widthAnchor.constraint(equalToConstant: 300),
            popupView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            popupView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Detalle tarea"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 15)
        titleLabel.textAlignment = .center
        popupView.addSubview(titleLabel)
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .justified
        textView.font = UIFont.systemFont(ofSize: 14)
        textView.layer.borderWidth = 1.0
        textView.layer.borderColor = UIColor.lightGray.cgColor
        textView.layer.cornerRadius = 5.0
        textView.isEditable = false // Deshabilitar la edición
        textView.isSelectable = false
        popupView.addSubview(textView)
        
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.datePickerMode = .date
        datePicker.isUserInteractionEnabled = false // Deshabilitar la edición
        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .compact
        }
        popupView.addSubview(datePicker)
        
        let cancelButton = UIButton()
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        cancelButton.setTitle("Cerrar", for: .normal)
        cancelButton.setTitleColor(.white, for: .normal)
        cancelButton.backgroundColor = .red
        cancelButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        cancelButton.layer.cornerRadius = 10
        cancelButton.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
        popupView.addSubview(cancelButton)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: popupView.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: popupView.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: popupView.trailingAnchor, constant: -16),
            
            textView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            textView.leadingAnchor.constraint(equalTo: popupView.leadingAnchor, constant: 16),
            textView.trailingAnchor.constraint(equalTo: popupView.trailingAnchor, constant: -16),
            textView.heightAnchor.constraint(equalToConstant: 80),
            
            datePicker.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 16),
            datePicker.centerXAnchor.constraint(equalTo: popupView.centerXAnchor),
            
            cancelButton.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 16),
            cancelButton.leadingAnchor.constraint(equalTo: popupView.leadingAnchor, constant: 16),
            cancelButton.bottomAnchor.constraint(equalTo: popupView.bottomAnchor, constant: -16),
            cancelButton.trailingAnchor.constraint(equalTo: popupView.trailingAnchor, constant: -16),
            cancelButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configureTextView() {
        textView.delegate = self
    }
    
    private func populateData() {
        textView.text = completedTask.observations
        textView.textColor = .black
        datePicker.date = completedTask.date
    }
    
    // MARK: - Actions
    @objc private func cancelButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
}

extension PopupViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == placeholderText {
            textView.text = ""
            textView.textColor = .black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = placeholderText
            textView.textColor = placeholderColor
        }
    }
}
