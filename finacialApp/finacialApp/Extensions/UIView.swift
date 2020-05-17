//
//  File.swift
//  FinacialApp
//
//  Created by Thiago Souza on 17/05/20.
//  Copyright © 2020 Thiago Souza. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviewForAutolayout(_ subview: UIView) {
        subview.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subview)
    }
}
