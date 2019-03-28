//
//  MainTabBarViewController.swift
//  Training Log
//
//  Created by Owen Pierce on 2/22/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    var currentWorkoutCoordinator: Coordinator?
    var historyCoordinator: Coordinator?
    var profileCoordinator: Coordinator?
    var planningCoordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
