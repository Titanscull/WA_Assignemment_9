//
//  ViewController.swift
//  Assignement_9
//
//  Created by Ievgen Petrovskiy on 02.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var students = [
        NameNickStruct(name: "Artem", nickName: "@bazinga"),
        NameNickStruct(name: "Evgeniy", nickName: "Petrovskyi"),
        NameNickStruct(name: "Maksym", nickName: "Blashko"),
        NameNickStruct(name: "Oleksandr", nickName: "Oliinyk"),
        NameNickStruct(name: "Viktor", nickName: "@viktorqube"),
        NameNickStruct(name: "Admin", nickName: "@service"),
        NameNickStruct(name: "Dmytro", nickName: "@dmytro")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mainTableView.dataSource = self
        
    }

}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "WA Group 84 Students"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath)
        // MAIN LABEL
        cell.textLabel?.text = "Section: \(indexPath.section), IndePath.row:\(indexPath.row)"
        
        cell.detailTextLabel?.text = "\(indexPath.row)"
        // SECONDARY LABEL
//        cell.detailTextLabel
//            students[indexPath.row].name // students[indexPath.row].slackName
        return cell
    }
    
    
}

