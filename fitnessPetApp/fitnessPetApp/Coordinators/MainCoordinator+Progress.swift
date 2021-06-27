//
//  ProgressCoordinator.swift
//  fitnessPetApp
//
//  Created by MACsimus on 25.06.2021.
//

import Foundation

extension  MainCoordinator {
    func presentProgressController () {
        let vc = ProgressViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
