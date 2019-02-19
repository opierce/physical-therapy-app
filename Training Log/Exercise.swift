//
//  Exercise.swift
//  Training Log
//
//  Created by Owen Pierce on 2/16/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit

enum WorkType: String {
    case movement
    case staticHold
}

class Exercise: NSObject {
    var name: String?
    var exerciseDescription: String?
    var movement: WorkType?
    var duration: TimeInterval?
    var weight: Double?
    var reps: Int?
    var notes: String?
    
    static let hardcodedList: [Exercise] = loadHardcodedExercises()
    
    static func loadHardcodedExercises() -> [Exercise] {
        return [Exercise]()
    }
}
