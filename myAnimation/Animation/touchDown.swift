//
//  touchDown.swift
//  myAnimation
//
//  Created by 费克翔 on 2017/12/4.
//  Copyright © 2017年 Crazzy. All rights reserved.
//

import Foundation
import UIKit

extension UIAnimation{
    
    
    
    func touchDown(from: Float, to: Float, duration: CFTimeInterval) {
        
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
        
        scaleAnimation.autoreverses = false
        scaleAnimation.fillMode = kCAFillModeForwards
        scaleAnimation.isRemovedOnCompletion = false
        scaleAnimation.duration = duration
        
        scaleAnimation.fromValue = NSNumber(value: from)
        scaleAnimation.toValue = NSNumber(value: to)
        
        view.layer.add(scaleAnimation, forKey: "scaleAnimation")
        
    }
    
    
    
}
