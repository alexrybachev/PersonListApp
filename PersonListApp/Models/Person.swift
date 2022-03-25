//
//  Person.swift
//  PersonListApp
//
//  Created by Aleksandr Rybachev on 21.03.2022.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    var rows: [String] {
        [phone, email]
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        for index in 0..<firstNames.count {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
