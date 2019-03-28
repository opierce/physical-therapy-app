//
//  Routes.swift
//  Training Log
//
//  Created by Owen Pierce on 2/18/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit

enum Routes {
    case getExercises
    
    var host: String {
        get {
            switch self {
            case .getExercises:
                return "Nothing here yet"
            }
        }
    }
    
    var path: String {
        get {
            switch self {
            case .getExercises:
                return "Nothing here yet"
            }
        }
    }
}
