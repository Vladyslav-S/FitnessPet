//
//  ViewController.swift
//  fitnessPetApp
//
//  Created by MACsimus on 23.06.2021.
//

import UIKit

class StartViewController: UIViewController, Storyboarded {
    
    var viewModel: StartViewModel!
//    weak var coordinator: MainCoordinator?
    
//    var startViewModel = StartViewModel()
    
    @IBOutlet private weak var manButton: UIButton!
    @IBOutlet private weak var womanButton: UIButton!
    
    @IBAction func didTapManButton(sender: UIButton) {
        viewModel.choose(sex: .man)
    }
    
    @IBAction func didTapWomanButton(sender: UIButton) {
        viewModel.choose(sex: .woman)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        firstButton.setTitle(startViewModel.firstButtonTitle, for: .normal)
//        secondButton.setTitle(startViewModel.secondButtonTitle, for: .normal)
    }
}

