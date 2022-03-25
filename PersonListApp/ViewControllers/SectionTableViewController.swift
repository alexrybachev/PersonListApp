//
//  SectionTableViewController.swift
//  PersonListApp
//
//  Created by Aleksandr Rybachev on 22.03.2022.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personSection", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: Image.phone.rawValue)
            content.text = persons[indexPath.row].phone
        default:
            content.image = UIImage(systemName: Image.tray.rawValue)
            content.text = persons[indexPath.row].email
        }
        
        cell.contentConfiguration = content
        return cell
    }
}


// MARK: - UITableViewDelegate

extension SectionTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
