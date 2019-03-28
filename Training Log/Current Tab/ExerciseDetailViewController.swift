//
//  ExerciseDetailViewController.swift
//  Training Log
//
//  Created by Owen Pierce on 2/22/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit
import Kingfisher

class ExerciseDetailViewController: UIViewController, Storyboarded {

    @IBOutlet fileprivate var image: UIImageView!
    @IBOutlet fileprivate var descriptionTextView: UITextView!
    @IBOutlet fileprivate var addButton: UIButton!
    
    var selectedExercise: Exercise!
    
    var currentWorkout: Workout? {
        didSet {
            if currentWorkout != nil &&
                currentWorkout?.movements?.contains(selectedExercise) == false {
                addButton.isHidden = false
                navigationItem.rightBarButtonItem =
                    UIBarButtonItem(barButtonSystemItem: .save,
                                    target: self,
                                    action: #selector(addExercise))
            } else {
                addButton.isHidden = true
                navigationItem.rightBarButtonItem = nil
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionTextView.text = selectedExercise.exerciseDescription
        addButton.roundCorners(withRadius: 5)
    }
    

    @IBAction fileprivate func addExercise() {
        currentWorkout?.movements?.append(selectedExercise)
    }

}
