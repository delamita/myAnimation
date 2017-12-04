//
//  dragToMova.swift
//  myAnimation
//
//  Created by 费克翔 on 2017/12/4.
//  Copyright © 2017年 Crazzy. All rights reserved.
//

import Foundation
import UIKit

extension UIAnimation{
    
    
    
    func dragToMove(sender: UIGestureRecognizer) {
        
        
        let superView = self.view.superview
        
        var x: CGFloat = 0
        var y: CGFloat = 0
        
        let hand = sender.location(in: superView)
        
        x = hand.x-self.view.center.x
        y = hand.y-self.view.center.y
        
        let newCenter = CGPoint(x: sender.location(in: superView).x-x, y: sender.location(in: superView).y-y)
        
        self.view.center = newCenter
        
    }
    
    
}
