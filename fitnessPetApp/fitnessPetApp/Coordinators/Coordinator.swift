//
//  Coordinator.swift
//  fitnessPetApp
//
//  Created by MACsimus on 23.06.2021.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
