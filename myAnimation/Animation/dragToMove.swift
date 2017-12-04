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
        
        if sender.state == .began{
            let hand = sender.location(in: superView)
            UIAnimation.xOfDragToMove = hand.x-self.view.center.x
            UIAnimation.yOfDragToMove = hand.y-self.view.center.y
            
            UIAnimation.a = 3
        }
        
        print(UIAnimation.xOfDragToMove,"  ",UIAnimation.yOfDragToMove ,"  ",UIAnimation.a)
        
        let newCenter = CGPoint(x: sender.location(in: superView).x-UIAnimation.xOfDragToMove, y: sender.location(in: superView).y-UIAnimation.yOfDragToMove)
        
        self.view.center = newCenter
        
    }
    
    
}
