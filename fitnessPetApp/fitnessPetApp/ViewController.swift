//
//  ViewController.swift
//  fitnessPetApp
//
//  Created by MACsimus on 23.06.2021.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BuyTapped(_ sender: Any) {
        
        //navigationController?.pushViewController(BuyViewController, animated: true)
        coordinator?.byuSubscription()
    }
    
    @IBAction func CreateAccTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
}

