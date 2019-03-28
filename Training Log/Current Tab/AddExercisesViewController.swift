//
//  AddExercisesViewController.swift
//  Training Log
//
//  Created by Owen Pierce on 2/18/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit

class AddExercisesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, Storyboarded {

    @IBOutlet var tableView: UITableView!
    
    var exerciseList: [Exercise] = Exercise.loadHardcodedExercises()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "ADD THIS!"
        tableView.register(ExerciseListCell.nib,
                           forCellReuseIdentifier: ExerciseListCell.reuse)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exerciseList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ExerciseListCell = tableView.dequeueReusableCell(withIdentifier: ExerciseListCell.reuse) as! ExerciseListCell
        
        cell.exercise = exerciseList[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let detailVC = ExerciseDetailViewController.instantiate()
        detailVC.selectedExercise = exerciseList[indexPath.row]
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

