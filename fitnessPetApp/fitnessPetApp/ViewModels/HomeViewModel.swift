//
//  ProfileViewModel.swift
//  fitnessPetApp
//
//  Created by MACsimus on 25.06.2021.
//

import Foundation

struct HomeViewModel {
    
    let variants = ["Profile", "Progress", "Program", "Muscles", "Calculator"]
    
    enum menu: String {
        case profile = "ProfileViewController"
        case progress = "ProgressViewController"
        case program = "ProgramViewController"
        case muscles = "MusclesViewController"
        case calculator = "CalculatorViewController"
        
    }
    
    let controllersID = [menu.profile, .progress, .program, .muscles, .calculator]
    
}
