//
//  ReviewFormViewController.swift
//  LetsEat
//
//  Created by macbook on 02/09/21.
//

import UIKit

class ReviewFormViewController: UITableViewController {

    var selectedRestaurantID:Int?
    
    @IBOutlet weak var ratingsView: RatingsView!
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tvReview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedRestaurantID as Any)
    }
}

private extension ReviewFormViewController {
    
    @IBAction func onSaveTapped(_ sender: Any) {
        var item = ReviewItem()
        item.name = tfName.text
        item.title = tfTitle.text
        item.customerReview = tvReview.text
        item.restaurantID = selectedRestaurantID
        item.rating = Double(ratingsView.rating)
        CoreDataManager.shared.addReview(item)
        dismiss(animated: true, completion: nil)
    }
}
