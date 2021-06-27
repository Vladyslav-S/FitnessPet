//
//  StartViewModel.swift
//  fitnessPetApp
//
//  Created by MACsimus on 25.06.2021.
//

import Foundation

class StartViewModel {
    
    enum Sex {
        case man
        case woman
        
        var title: String {
            switch self {
            case .man:
                return "SUPERMAN"
            case .woman:
                return "SUPERWOMAN"
            }
        }
    }
    
    weak var coordinator: MainCoordinator?
    
    init(coordinator: MainCoordinator?) {
        self.coordinator = coordinator
    }
    
    
    
    var firstButtonTitle: String {
        return Sex.man.title
    }
    
    var secondButtonTitle: String {
        return Sex.woman.title
    }
    
    func choose(sex: Sex) {
        sex.title
    }
}
