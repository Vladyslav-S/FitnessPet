//
//  ViewController.swift
//  fitnessPetApp
//
//  Created by MACsimus on 23.06.2021.
//

import UIKit

class StartViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    var startViewModel = StartViewModel()
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstButton.setTitle(startViewModel.firstButtonTitle, for: .normal)
        secondButton.setTitle(startViewModel.secondButtonTitle, for: .normal)
        
        //navigationController?.setNavigationBarHidden(true, animated: false)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sexChoosen(_ sender: UIButton) {
        
        coordinator?.choosenCharacter()
        
    }
}

