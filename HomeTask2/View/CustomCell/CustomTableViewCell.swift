//
//  CustomTableViewCell.swift
//  HomeTask2
//
//  Created by Арсений on 18.10.2023.
//

import UIKit

protocol CustomTableViewCellDelegate: AnyObject {
    func addInArray(with car: CarModel)
}

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var addButton: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    weak var delegate: CustomTableViewCellDelegate?
    var addedCar: CarModel?
    
    
    func configure (with car: CarModel) {
        priceLabel.text = String(car.price)
        priceLabel.sizeToFit()
        nameLabel.text = car.name
        nameLabel.sizeToFit()
        avatarImageView.image = car.avatar
        self.addedCar = car
    }
    
    @IBAction func addAction(_ sender: Any) {
        if let addedCar {
            delegate?.addInArray(with: addedCar)
        }
        print()
    }
}
