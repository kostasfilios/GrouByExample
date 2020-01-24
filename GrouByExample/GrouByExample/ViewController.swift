//
//  ViewController.swift
//  GrouByExample
//
//  Created by Kostas Filios on 24/1/20.
//  Copyright © 2020 Kostas Filios. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTestUsers()
    }
    
    private func generateTestUsers() {
        let johnUser = User(town: "Athens", age: 20, name: "John")
        let georgeUser = User(town: "Crete", age: 21, name: "George")
        let nickUser = User(town: "Athens", age: 22, name: "Nick")
        let mariaUser = User(town: "Rodes", age: 18, name: "Maria")
        let johnUserCrete = User(town: "Crete", age: 30, name: "John")
        let johnUserRodes = User(town: "Rodes", age: 24, name: "John")
        let users = [johnUser, georgeUser, nickUser, mariaUser, johnUserCrete, johnUserRodes]
        let groupedUsersByTown = users.groupBy{ $0.town }
        print(groupedUsersByTown)
        let groupedUserByAge = users.groupBy{ $0.age }
        print(groupedUserByAge)
        let groupedUserByName = users.groupBy{ $0.name }
        print(groupedUserByName)
    }
}

