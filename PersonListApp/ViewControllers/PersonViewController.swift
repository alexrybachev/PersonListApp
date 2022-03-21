//
//  PersonViewController.swift
//  PersonListApp
//
//  Created by Aleksandr Rybachev on 21.03.2022.
//

import UIKit

class PersonViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Properties
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
