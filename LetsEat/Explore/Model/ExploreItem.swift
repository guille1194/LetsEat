//
//  ExploreItem.swift
//  LetsEat
//
//  Created by macbook on 29/08/21.
//

import Foundation

struct ExploreItem {
    var name: String
    var image: String
}

extension ExploreItem {
    init(dict:[String:AnyObject]) {
        self.name = dict["name"] as! String
        self.image = dict["image"] as! String
    }
}
