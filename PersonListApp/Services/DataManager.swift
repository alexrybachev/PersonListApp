//
//  DataManager.swift
//  PersonListApp
//
//  Created by Aleksandr Rybachev on 21.03.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    init() {}
    
    let firstNames = [
        "John", "Sharon",
        "Aaron", "Steven",
        "Nicola", "Ted",
        "Bruce", "Carl",
        "Allan", "Petr"
    ]
    
    let lastNames = [
        "Murphy", "Jankin",
        "Williams", "Black",
        "Robertson", "Butler",
        "Smith", "Petrov",
        "Ivanov", "Sidorov"
    ]
    
    let phones = [
        "756295629", "501285927",
        "509298346", "567392302",
        "0129743411", "1122334455",
        "1234567890", "0987654321",
        "6543087193", "0192837465"
    ]
    
    let emails = [
        "bob@ya.ru", "petr@gmail.com",
        "mir@mir.ru", "gendalf@boss.org",
        "abc@yard.ru", "child@parent.ru",
        "apple@apple.com", "pentagon@usa.com",
        "kreml@ru.ru", "travel@world.org"
    ]
}

enum Image: String, CaseIterable {
    case phone
    case tray
}
