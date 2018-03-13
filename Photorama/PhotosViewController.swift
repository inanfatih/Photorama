//
//  PhotosViewController.swift
//  Photorama
//
//  Created by Fatih inan on 2018-03-12.
//  Copyright © 2018 Fatih inan. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var store: PhotoStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        store.fetchInterestingPhotos()
    }
}
