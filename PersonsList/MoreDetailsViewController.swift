//
//  MoreDetailsViewController.swift
//  PersonsList
//
//  Created by timatika on 09.11.2021.
//

import UIKit

class MoreDetailsViewController: UITableViewController {

    var titleName: (String, String)!
    var phone: String = ""
    var email: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(titleName.0) \(titleName.1)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moreDetails", for: indexPath)
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = "Phone: \(phone)"
        } else {
        content.text = "Email: \(email)"
        }
        cell.contentConfiguration = content
        return cell
    }
}
