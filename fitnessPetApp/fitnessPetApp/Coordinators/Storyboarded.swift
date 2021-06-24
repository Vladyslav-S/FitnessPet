//
//  Storyboarded.swift
//  fitnessPetApp
//
//  Created by MACsimus on 23.06.2021.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        
        // this pulls out "MyApp.MyViewController"
        let id = String(describing: self)

        // load our storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
