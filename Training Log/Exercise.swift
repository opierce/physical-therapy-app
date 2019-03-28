//
//  Exercise.swift
//  Training Log
//
//  Created by Owen Pierce on 2/16/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit
import SwiftyJSON

enum WorkType: String {
    case movement
    case staticHold
    case dynamicHold
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
    
    init(json: JSON) {
        super.init()
        name = json["name"].string
        exerciseDescription = json["exerciseDescription"].string
        movement = WorkType(rawValue: json["movement"].string ?? "movement")
    }
    
    static func loadHardcodedExercises() -> [Exercise] {
        do {
            if let path = Bundle.main.path(forResource: "exercise-list", ofType: "json") {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let exerciseJSON = JSON(data: data)
                let exerciseList = exerciseJSON["exercises"].arrayValue
                var parsedExercises = [Exercise]()
                
                for entry in exerciseList {
                    parsedExercises.append(Exercise(json: entry))
                }
                
                print("Loaded Exercises: \n\(parsedExercises)")
                return parsedExercises
                
            } else {
                print("Exercise file not found!")
                return [Exercise]()
            }
            
        } catch {
            print("Failed to load hardcoded exercises")
            return [Exercise]()
        }
    }
}
