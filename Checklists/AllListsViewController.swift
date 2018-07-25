//
//  AllListsViewController.swift
//  Checklists
//
//  Created by Quyet Vu on 7/22/18.
//  Copyright © 2018 Quyet Vu. All rights reserved.
//

import UIKit

class AllListsViewController: UITableViewController {

    var lists = [Checklist]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        
        var list = Checklist(name: "Birthdays")
        lists.append(list)
        
        list = Checklist(name: "Sports")
        lists.append(list)
        
        list = Checklist(name: "Cool apps")
        lists.append(list)
        
        list = Checklist(name: "To do")
        lists.append(list)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    // MARK: - Table view datasource
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = makeCell(for: tableView)
        // Update cell information
        let checklist = lists[indexPath.row]
        cell.textLabel!.text = checklist.name
        cell.accessoryType = .detailDisclosureButton
        
        return cell
    }
    
    func makeCell(for tableView: UITableView) -> UITableViewCell {
        let cellIndentifier = "Cell"
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier) {
            return cell
        } else {
            return UITableViewCell(style: .default, reuseIdentifier: cellIndentifier)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let checklist = lists[indexPath.row]
        performSegue(withIdentifier: "ShowChecklist", sender: checklist)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowChecklist" {
            let controller = segue.destination as! ChecklistViewController
            controller.checklist = sender as! Checklist
        }
    }
}
