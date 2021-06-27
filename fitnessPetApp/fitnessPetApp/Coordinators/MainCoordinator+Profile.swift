//
//  ProfileCoordinator.swift
//  fitnessPetApp
//
//  Created by MACsimus on 25.06.2021.
//

import Foundation

extension  MainCoordinator {
    func presentProfileController () {
        let vc = ProfileViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
//transition delegate
//multi selection

