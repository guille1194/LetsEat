//
//  RestaurantDataManager.swift
//  LetsEat
//
//  Created by macbook on 31/08/21.
//

import Foundation

class RestaurantDataManager {
    private var items:[RestaurantItem] = []
    
    func fetch(by location:String, with filter:String = "All", completionHandler:(_ items:[RestaurantItem]) -> Void) {
        if let file = Bundle.main.url(forResource: location, withExtension: "json") {
            do {
                let data = try Data(contentsOf: file)
                let restaurants = try JSONDecoder().decode([RestaurantItem].self, from: data)
                if filter != "All" {
                    items = restaurants.filter({ ($0.cuisines.contains(filter)) })
                } else { items = restaurants }
            }
            catch {
                print("there was an error \(error)")
            }
        }
        completionHandler(items)
    }
    
    func numberOfItems() -> Int {
        items.count
    }
    
    func restaurantItem(at index: IndexPath) -> RestaurantItem {
        items[index.item]
    }
}
