//
//  ImageViewController.swift
//  Cassini
//
//  Created by Trương Thắng on 4/8/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var imageURL: URL?
    
    private var imageView = UIImageView()
    private var image: UIImage? {
        set {
            imageView.image = newValue
            imageView.sizeToFit()
        }
        get {
            return imageView.image
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        
        
    }
}
