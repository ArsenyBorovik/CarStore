//
//  ViewController.swift
//  HomeTask2
//
//  Created by Арсений on 18.10.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, CustomTableViewCellDelegate {
    
    
    
    @IBOutlet weak var cartButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    var dataSource: [CarModel] = []
    let cartIdentifier = "cartIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = DataManager.shared.obtainCars()
        let cellNib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(cellNib, forCellReuseIdentifier: "reuseIdentifier")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! CustomTableViewCell
        let car = dataSource[indexPath.row]
        cell.configure(with: car)
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let car = dataSource[indexPath.row]
        navigationController?.pushViewController(DetialViewController(with: car), animated: true)
    }
    
    func addInArray(with car: CarModel) {
        DataManager.shared.cartAraay.append(car)
        print(DataManager.shared.cartAraay)
    }

    @IBAction func cartAction(_ sender: Any) {
        performSegue(withIdentifier: "cartIdentifier", sender: nil)
    }
    
}
