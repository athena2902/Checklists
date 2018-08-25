//
//  Checklist.swift
//  Checklists
//
//  Created by Quyet Vu on 7/22/18.
//  Copyright © 2018 Quyet Vu. All rights reserved.
//

import UIKit

class Checklist: NSObject, Codable {
    var name = "No Icon"
    var items = [CheckListItem]()
    var iconName = "Appointments"
    
    init(name: String, iconName: String = "No Icon") {
        self.name = name
        self.iconName = iconName
        super.init()
    }
    
    func countUncheckedItems() -> Int {
        return items.reduce(0, { (cnt, item) -> Int in
            cnt + (item.checked ? 0 : 1)
        })
    }
}
