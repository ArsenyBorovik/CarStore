//
//  DetialViewController.swift
//  HomeTask2
//
//  Created by Арсений on 18.10.2023.
//

import UIKit

class DetialViewController: UIViewController {
    
    lazy var modelLabel: UILabel = {
        
        let modelLabel = UILabel()
        modelLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return modelLabel
    }()
    
    lazy var costLabel: UILabel = {
        
        let costLabel = UILabel()
        costLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return costLabel
    }()
    
    lazy var avatarImageView: UIImageView = {
       
        let avatarImageView = UIImageView()
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return avatarImageView
    }()
    
    init(with car: CarModel) {
        super.init(nibName: nil, bundle: nil)
        
        modelLabel.text = car.name
        costLabel.text = String(car.price)
        avatarImageView.image = car.avatar
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(modelLabel)
        view.addSubview(costLabel)
        view.addSubview(avatarImageView)
        view.backgroundColor = .white
        setupLayout()
        
    }
    
    private func setupLayout() {
        let mainStackView = UIStackView(arrangedSubviews: [avatarImageView, modelLabel, costLabel])
        mainStackView.axis = .vertical
        mainStackView.distribution = .fillEqually
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainStackView)
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            avatarImageView.topAnchor.constraint(equalTo: mainStackView.topAnchor, constant: 50),
            avatarImageView.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor, constant: 25),
            avatarImageView.trailingAnchor.constraint(equalTo: mainStackView.safeAreaLayoutGuide.trailingAnchor, constant: 25),
            avatarImageView.bottomAnchor.constraint(equalTo: modelLabel.topAnchor, constant: -50),
            modelLabel.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor, constant: 150),
            modelLabel.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor, constant: -50),
            modelLabel.bottomAnchor.constraint(equalTo: costLabel.topAnchor, constant: -25),
            costLabel.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor, constant: 150)
        ])
    }
}
