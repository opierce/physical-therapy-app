//
//  UIButton+Edges.swift
//  Training Log
//
//  Created by Owen Pierce on 2/22/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit

extension UIView {
    func roundCorners(withRadius radius: CGFloat) {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = radius
    }
}
