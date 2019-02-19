//
//  CurrentWorkoutViewController.swift
//  Training Log
//
//  Created by Owen Pierce on 2/16/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit

class CurrentWorkoutViewController: UIViewController {

    var currentWorkout: Workout?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.rightBarButtonItem =
            UIBarButtonItem(barButtonSystemItem: .add,
                            target: self,
                            action: #selector(didTapAddExercise))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    @objc fileprivate func didTapAddExercise() {
        
    }
}

