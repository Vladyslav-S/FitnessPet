//
//  BaseViewController.swift
//  fitnessPetApp
//
//  Created by MACsimus on 25.06.2021.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupBackgroungImage()
    }
    
    private func setupBackgroungImage() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        
        backgroundImage.image = #imageLiteral(resourceName: "iPhone 6-7-8 – 54")
        backgroundImage.contentMode = .scaleAspectFill
        
        view.insertSubview(backgroundImage, at: 0)
    }

}
