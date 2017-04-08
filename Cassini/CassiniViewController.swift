//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Trương Thắng on 4/8/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation
    
    private struct Storyboard {
        static let ShowImageSegue = "Show Image"
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.ShowImageSegue {
            if let imageVC = segue.destination as? ImageViewController {
                if let imageName = (sender as? UIButton)?.currentTitle {
                    imageVC.imageURL = DemoURL.NASAImageNamed(imageName: imageName)
                }
            }
        }
    }

}
