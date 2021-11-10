//
//  PersonalListTableViewController.swift
//  PersonsList
//
//  Created by timatika on 09.11.2021.
//

import UIKit

class PersonalListTableViewController: UITableViewController {

    var randomPersons = Person.getRandomFullName()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        randomPersons.0.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personFullName", for: indexPath)
        let fullName = (randomPersons.0[indexPath.row], randomPersons.1[indexPath.row])
        var content = cell.defaultContentConfiguration()
        content.text = "\(fullName.0) \(fullName.1)"
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreDetailsVC = segue.destination as? MoreDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }

        let fullName = (randomPersons.0[indexPath.row], randomPersons.1[indexPath.row])
        moreDetailsVC.titleName = fullName
        let randomPhone = randomPersons.2[indexPath.row]
        moreDetailsVC.phone = randomPhone
        let randomEmail = randomPersons.3[indexPath.row]
        moreDetailsVC.email = randomEmail
    }
}
