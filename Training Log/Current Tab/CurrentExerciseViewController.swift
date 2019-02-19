//
//  CurrentExerciseViewController.swift
//  Training Log
//
//  Created by Owen Pierce on 2/16/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit

class CurrentExerciseViewController: UIViewController {
    
    var exercise: Exercise?
    
    @IBOutlet var exerciseDescriptionTextView: UITextView!
    
    @IBOutlet var trackingTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = exercise?.name ?? ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

class ExerciseTrackingTableViewCell: UITableViewCell {
    @IBOutlet var setCountLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var repCountLabel: UILabel!
    
    
}
