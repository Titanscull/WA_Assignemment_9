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
        
        
        
    }

    
    

}

