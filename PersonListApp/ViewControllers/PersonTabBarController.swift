//
//  PersonTabBarController.swift
//  PersonListApp
//
//  Created by Aleksandr Rybachev on 22.03.2022.
//

import UIKit

class PersonTabBarController: UITabBarController {
    
    private let persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        transferData(about: persons)
    }
    
    // MARK: - Navigation
    private func transferData(about persons: [Person]) {
        
        guard let navigations = viewControllers else { return }
        
        for navigation in navigations {
            guard let navigationVC = navigation as? UINavigationController else { return }

            if let personVC = navigationVC.topViewController as? ListTableViewController {
                personVC.persons = persons
            } else if let sectionVC = navigationVC.topViewController as? SectionTableViewController {
                sectionVC.persons = persons
            }
        }
    }
}
