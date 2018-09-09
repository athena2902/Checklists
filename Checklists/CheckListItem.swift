//
//  CheckListItem.swift
//  Checklists
//
//  Created by Quyet Vu on 6/9/18.
//  Copyright © 2018 Quyet Vu. All rights reserved.
//

import Foundation

class CheckListItem: NSObject, Codable {
    var text = ""
    var checked = false
    var dueDate = Date()
    var shoudRemind = false
    var itemID: Int
    
    override init() {
        itemID = DataModel.nextChecklistItemID()
        super.init()
    }
    
    func toggleChecked() {
        checked = !checked
    }
}
