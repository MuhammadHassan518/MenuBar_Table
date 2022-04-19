//
//  ViewController.swift
//  MenuTable
//
//  Created by Muhammad Hassan on 04/04/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
  
    
    @IBOutlet weak var tableView: UITableView!
    let namesArray = ["Home","My Groups","My Luggage","My Friends", "Timeline","My Profile","Our Brands","Invite Friends", "notifications","Settings"]
    
    let ImagesArray = ["Home","My Groups","My Luggage","My Friends", "Timeline","My Profile","Our Brands","Invite Friends", "notifications","Settings"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        tableView.register(UINib.init(nibName: "Table_VC_Cell", bundle: nil), forCellReuseIdentifier: "TableVC_XIB")
        
      //  tableView.register(UINib.init(nibName: "XIB cell class name", bundle: nil), forCellReuseIdentifier: "XIB Cell name")
      
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return namesArray.count }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableVC_XIB", for: indexPath) as! Table_VC_Cell
        cell.lblName.text = namesArray[indexPath.row]
        cell.lblImage.image = UIImage(named:ImagesArray[indexPath.row])
        
        return cell
    }
    
}

