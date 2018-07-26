//
//  Checklist.swift
//  Checklists
//
//  Created by Quyet Vu on 7/22/18.
//  Copyright © 2018 Quyet Vu. All rights reserved.
//

import UIKit

class Checklist: NSObject, Codable {
    var name = ""
    var items = [CheckListItem]()
    
    init(name: String) {
        self.name = name
        super.init()
    }
}
