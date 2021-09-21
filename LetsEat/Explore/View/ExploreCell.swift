//
//  ExploreCell.swift
//  LetsEat
//
//  Created by macbook on 30/08/21.
//

import UIKit

class ExploreCell: UICollectionViewCell {
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var imgExplore: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgExplore.layer.cornerRadius = 9
        imgExplore.layer.masksToBounds = true
    }
}
