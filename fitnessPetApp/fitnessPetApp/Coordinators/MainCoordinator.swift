//
//  MainCoordinator.swift
//  fitnessPetApp
//
//  Created by MACsimus on 23.06.2021.
//

import Foundation
import UIKit


class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = StartViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func choosenCharacter() {
        let vc =  HomeViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func home() {
//        let vc = 
    }
}
