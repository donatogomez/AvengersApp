//
//  VillainsCollectionViewCell.swift
//  AvengersApp
//
//  Created by Donato Gomez on 10/12/21.
//

import UIKit

class VillainsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewCell: UIView?
    @IBOutlet weak var imageCell: UIImageView?
    @IBOutlet weak var nameCell: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()

      /**  viewCell?.layer.cornerRadius = 4.0
        viewCell?.layer.shadowColor = UIColor.black.cgColor
        viewCell?.layer.shadowOffset = CGSize.zero
        viewCell?.layer.shadowOpacity = 0.7
        viewCell?.layer.shadowRadius = 4.0 */
        
        imageCell?.layer.cornerRadius = 4.0
                
       // viewCell?.backgroundColor = heroesBackground
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        imageCell?.image = nil
        nameCell?.text = nil
    }
    
    func configureViews(image: String? = nil, name: String? = nil) {
        self.imageCell?.image = UIImage(named: image ?? "")
        self.nameCell?.text = name
    }
}
