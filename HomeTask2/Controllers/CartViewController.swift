//
//  CartViewController.swift
//  HomeTask2
//
//  Created by Арсений on 18.10.2023.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var cartTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let cartCellNib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        cartTableView.delegate = self
        cartTableView.dataSource = self
        cartTableView.register(cartCellNib, forCellReuseIdentifier: "reuseIdentifier")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.shared.cartAraay.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! CustomTableViewCell
        let cartCar = DataManager.shared.cartAraay[indexPath.row]
        cell.configure(with: cartCar)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            DataManager.shared.cartAraay.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
}
