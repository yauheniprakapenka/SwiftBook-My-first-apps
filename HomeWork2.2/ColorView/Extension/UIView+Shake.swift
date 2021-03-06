//
//  UIView+Shake.swift
//  ColorView
//
//  Created by yauheni prakapenka on 02.02.2020.
//  Copyright © 2020 yauheni prakapenka. All rights reserved.
//

import UIKit

extension UIView {
    
    func shake(completion: (() -> Void)? = nil) {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.duration = 0.6
        animation.values = [-20.0, 20.0, -20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0 ]
        layer.add(animation, forKey: "shake")
        completion?()
    }
    
}
