//
//  AnotherPersonalListTableViewController.swift
//  PersonsList
//
//  Created by timatika on 09.11.2021.
//

import UIKit

class AnotherPersonalListTableViewController: UITableViewController {

    var titleName: (String, String)!
    var phone: String!
    var email: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "anotherPerson", for: indexPath)

        return cell
    }
}

