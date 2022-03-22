//
//  ListTableViewController.swift
//  PersonListApp
//
//  Created by Aleksandr Rybachev on 21.03.2022.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)

        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personVC = segue.destination as? PersonViewController else { return }
        personVC.person = sender as? Person
    }
}

// MARK: - UITableViewDelegate
extension ListTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "showPerson", sender: person)
    }
}
