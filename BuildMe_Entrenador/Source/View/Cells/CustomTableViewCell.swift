//
//  CustomTableViewCell.swift
//  BuildMe_Entrenador
//
//  Created by Alejandro Rodríguez Cañete on 3/6/24.
//

import UIKit

// Definición de la clase para una celda personalizada
class CustomTableViewCell: UITableViewCell {
    
    // MARK: - Propiedades
    
    // Componentes de la interfaz de usuario
    
    /// La vista de imagen personalizada.
    let customImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    /// La etiqueta del título.
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    /// La etiqueta del subtítulo.
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .darkGray
        return label
    }()
    
    /// El stack view que contiene las etiquetas de título y subtítulo.
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        return stackView
    }()
    
    // MARK: - Métodos
    
    /// Inicialización de la celda.
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    /// Inicialización requerida cuando se carga desde un archivo de storyboard o una interfaz de usuario xib.
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    
    // Configuración de la vista
    private func setupViews() {
        // Agregar componentes a la vista de contenido de la celda
        contentView.addSubview(customImageView)
        contentView.addSubview(stackView)
        
        // Agregar etiquetas de título y subtítulo al stack view
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(subtitleLabel)
        
        // Configuración de las restricciones para la vista de imagen personalizada
        NSLayoutConstraint.activate([
            customImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            customImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            customImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            customImageView.widthAnchor.constraint(equalToConstant: 100),
            customImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        // Configuración de las restricciones para el stack view
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: customImageView.trailingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
        ])
    }
}
