//
//  ExerciseListCell.swift
//  Training Log
//
//  Created by Owen Pierce on 2/22/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit

class ExerciseListCell: UITableViewCell {
    static let reuse = "ExerciseListCell"
    static let nib = UINib(nibName: reuse, bundle: nil)
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var shortDescriptionLabel: UILabel!
    @IBOutlet var smallImageView: UIImageView!
    
    var exercise: Exercise? {
        didSet {
            nameLabel.text = exercise?.name ?? ""
            shortDescriptionLabel.text = "" //exercise.shortDescription
            //            smallImageView.kf.setim
        }
    }
    
}
