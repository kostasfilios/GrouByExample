//
//  Array.swift
//  Novibet
//
//  Created by Kostas Filios on 14/06/2019.
//  Copyright © 2019 Novibet. All rights reserved.
//

import Foundation

extension Collection {
    
    /// Returns a dictionary containing the results of grouped items
    /// over the give parameter as key.
    ///
    /// In this example, `groupBy` is used to group users per town
    ///
    ///     typealias User = (town: String, age: Int, name: String)
    ///
    ///     let johnUser = User(town: "Athens", age: 20, name: "John")
    ///     let georgeUser = User(town: "Crete", age: 21, name: "George")
    ///     let nickUser = User(town: "Athens", age: 22, name: "Nick")
    ///     let mariaUser = User(town: "Rodes", age: 18, name: "Maria")
    ///     let users = [johnUser, georgeUser, nickUser, mariaUser]
    ///     let groupedUsers = users.groupBy{$0.town}
    ///     //`groupedUsers` == ["Athens":[johnUser, nickUser], "Crete":[georgeUser], "Rodes":[mariaUser]]
    ///
    /// - Parameter key: A keys used as dictionary hash over items
    /// - Returns: A dictionary tha contains grouped items per key
    func groupBy<T>(_ key: (Element) -> T) -> [T : [Element]] {
        var returnItems = [T : [Element]]()
        for x in self {
            let key = key(x)
            guard var items = returnItems[key] else {
                returnItems[key] = [x]
                continue
            }
            items.append(x)
            returnItems[key] = items
        }
        return returnItems
    }
}
