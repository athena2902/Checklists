//
//  CheckListItem.swift
//  Checklists
//
//  Created by Quyet Vu on 6/9/18.
//  Copyright © 2018 Quyet Vu. All rights reserved.
//

import Foundation

class CheckListItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
