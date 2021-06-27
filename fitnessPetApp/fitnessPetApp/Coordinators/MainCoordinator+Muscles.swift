//
//  MusclesCoordinator.swift
//  fitnessPetApp
//
//  Created by MACsimus on 25.06.2021.
//

import Foundation

extension  MainCoordinator {
    func presentMusclesController () {
        let vc = MusclesViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
