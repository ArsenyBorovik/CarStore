//
//  DataManager.swift
//  HomeTask2
//
//  Created by Арсений on 19.10.2023.
//

import Foundation
import UIKit



class DataManager {
    
    var cartAraay: [CarModel] = []
    static let shared = DataManager()
    
    func obtainCars() -> [CarModel] {
        
        let car1 = CarModel(name: "Amg", price: 98354, avatar: .amg)
        let car2 = CarModel(name: "audi", price: 485737, avatar: .audi)
        let car3 = CarModel(name: "bmw", price: 487273, avatar: .bmw)
        let car4 = CarModel(name: "chellenger", price: 29867, avatar: .chellenger)
        let car5 = CarModel(name: "corvette", price: 57283, avatar: .corvette)
        let car6 = CarModel(name: "crown", price: 487239, avatar: .crown)
        let car7 = CarModel(name: "impala", price: 98536, avatar: .impala)
        let car8 = CarModel(name: "mustang", price: 48799, avatar: .mustang)
        let car9 = CarModel(name: "porsche", price: 25987, avatar: .porsche)
        let car10 = CarModel(name: "vaz", price: 98753, avatar: .vaz)
        
        return [car1, car2, car3, car4, car5, car6, car7, car8, car9, car10]
    }
}
