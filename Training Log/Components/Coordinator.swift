//
//  Coordinator.swift
//  Training Log
//
//  Created by Owen Pierce on 2/19/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
