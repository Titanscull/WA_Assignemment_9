//
//  ViewController.swift
//  Assignement_9
//
//  Created by Ievgen Petrovskiy on 02.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTableView.dataSource = self
        mainTableView.tableFooterView = UIView()
        
    }
    
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "WA Group №84 Students"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath)
        
        students.sort(by: { $0.name < $1.name })
        
        cell.textLabel?.text = students[indexPath.row].name
        
        cell.detailTextLabel?.text = students[indexPath.row].nickName
        
        return cell
    }
    
    
}

