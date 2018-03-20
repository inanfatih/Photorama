//
//  PhotoCollectionViewCell.swift
//  Photorama
//
//  Created by Fatih inan on 2018-03-19.
//  Copyright © 2018 Fatih inan. All rights reserved.
//

import UIKit

class  PhotoCollectionViewCell : UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var spinner: UIActivityIndicatorView!
    
    
    func update (with image: UIImage?) {
        if let imageToDisplay = image {
            spinner.stopAnimating()
            imageView.image = imageToDisplay
        }
        else {
            spinner.startAnimating()
            imageView.image = nil
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        update(with: nil)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        update(with: nil)
    }
    
}
