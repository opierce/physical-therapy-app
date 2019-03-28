//
//  UITableViewCell+Nib.swift
//  Training Log
//
//  Created by Owen Pierce on 2/22/19.
//  Copyright © 2019 Owen Pierce. All rights reserved.
//

import UIKit

protocol Nibbed {
    static func reuse() -> String
    static func nibForCell() -> UINib
}

extension Nibbed where Self: UITableViewCell {
    static func reuse() -> String {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        return className
    }
    
    static func nibForCell() -> UINib {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let nib = UINib(nibName: className, bundle: Bundle.main)
        return nib
    }
}
