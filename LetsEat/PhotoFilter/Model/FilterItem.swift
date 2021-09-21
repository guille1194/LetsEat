//
//  FilterItem.swift
//  LetsEat
//
//  Created by macbook on 02/09/21.
//

import Foundation

class FilterItem: NSObject {
    let filter: String
    let name: String
    
    init(dict:[String:AnyObject]) {
        name = dict["name"] as! String
        filter = dict["filter"] as! String
    }
}
