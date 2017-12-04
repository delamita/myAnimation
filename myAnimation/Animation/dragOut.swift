//
//  dragOut.swift
//  myAnimation
//
//  Created by 费克翔 on 2017/12/4.
//  Copyright © 2017年 Crazzy. All rights reserved.
//

import Foundation
import UIKit

extension UIAnimation{
    
    func drawOut(variationRange: CGFloat, duration: CFTimeInterval, direction: direction){
        
        let oldCenter = view.center
        var newCenter = CGPoint()
        var newSize = CGSize()
        
        
        switch direction {
        case .UP:
            
            newCenter = CGPoint(x: oldCenter.x, y: oldCenter.y-variationRange/2)
            newSize = CGSize(width: view.frame.width, height: view.frame.height+variationRange)
            
        case .DOWN:
            
            newCenter = CGPoint(x: oldCenter.x, y: oldCenter.y+variationRange/2)
            newSize = CGSize(width: view.frame.width, height: view.frame.height+variationRange)
            
        case .LEFT:
            
            newCenter = CGPoint(x: oldCenter.x-variationRange/2, y: oldCenter.y)
            newSize = CGSize(width: view.frame.width+variationRange, height: view.frame.height)
            
        case .RIGHT:
            
            newCenter = CGPoint(x: oldCenter.x+variationRange/2, y: oldCenter.y)
            newSize = CGSize(width: view.frame.width+variationRange, height: view.frame.height)
            
        }
        
        
        let sizeChange = CABasicAnimation(keyPath: "bounds.size")
        
        sizeChange.fromValue = view.frame.size
        sizeChange.toValue = newSize
        
        sizeChange.duration = duration
        sizeChange.fillMode = kCAFillModeForwards
        sizeChange.isRemovedOnCompletion = false
        sizeChange.autoreverses = false
        
        
        let positionMove = CABasicAnimation(keyPath: "position")
        positionMove.fromValue = oldCenter
        positionMove.toValue = newCenter
        
        
        positionMove.fillMode = kCAFillModeForwards
        positionMove.isRemovedOnCompletion = false
        positionMove.autoreverses = false
        positionMove.duration = duration
        
        view.layer.add(positionMove, forKey: "positionMove")
        view.layer.add(sizeChange, forKey: "sizeChange")
        
    }
    
    
    
    func drawOut(originalFrame: CGRect,forwardFrame: CGRect, duration: CFTimeInterval) {
        
        
        let oldCenter = CGPoint(x: originalFrame.origin.x+originalFrame.width/2, y: originalFrame.origin.y+originalFrame.height/2)
        let newCenter = CGPoint(x: forwardFrame.origin.x+forwardFrame.width/2, y: forwardFrame.origin.y+forwardFrame.height/2)
        
        view.frame = forwardFrame
        
        
        let sizeChange = CABasicAnimation(keyPath: "bounds.size")
        
        sizeChange.fromValue = originalFrame.size
        sizeChange.toValue = forwardFrame.size
        
        sizeChange.duration = duration
        sizeChange.fillMode = kCAFillModeForwards
        sizeChange.isRemovedOnCompletion = false
        sizeChange.autoreverses = false
        
        
        let positionMove = CABasicAnimation(keyPath: "position")
        positionMove.fromValue = oldCenter
        positionMove.toValue = newCenter
        
        
        positionMove.fillMode = kCAFillModeForwards
        positionMove.isRemovedOnCompletion = false
        positionMove.autoreverses = false
        positionMove.duration = duration
        
        view.layer.add(positionMove, forKey: "positionMove")
        view.layer.add(sizeChange, forKey: "sizeChange")
        
    }
    
    func drawOut(toFrame :CGRect, duration: CFTimeInterval) {
        
        let oldCenter = view.center
        let newCenter = CGPoint(x: toFrame.origin.x+toFrame.width/2, y: toFrame.origin.y+toFrame.height/2)
        
        
        
        
        let sizeChange = CABasicAnimation(keyPath: "bounds.size")
        
        sizeChange.fromValue = view.frame.size
        sizeChange.toValue = toFrame.size
        
        sizeChange.duration = duration
        sizeChange.fillMode = kCAFillModeForwards
        sizeChange.isRemovedOnCompletion = false
        sizeChange.autoreverses = false
        
        
        let positionMove = CABasicAnimation(keyPath: "position")
        positionMove.fromValue = oldCenter
        positionMove.toValue = newCenter
        
        
        positionMove.fillMode = kCAFillModeForwards
        positionMove.isRemovedOnCompletion = false
        positionMove.autoreverses = false
        positionMove.duration = duration
        
        view.layer.add(positionMove, forKey: "positionMove")
        view.layer.add(sizeChange, forKey: "sizeChange")
        
        view.frame = toFrame
        
    }
    
}
