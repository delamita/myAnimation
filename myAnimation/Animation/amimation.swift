//
//  amimation.swift
//  myAnimation
//
//  Created by 费克翔 on 2017/12/3.
//  Copyright © 2017年 Crazzy. All rights reserved.
//

import Foundation
import UIKit

class UIAnimation {
    
    let view:UIView
    
    enum direction {
        case UP
        case DOWN
        case LEFT
        case RIGHT
    }
    
    init() {
        view = UIView()
    }
    
    init(view: UIView) {
        self.view = view
    }
    
    static var a = 1
    
    
    static var xOfDragToMove:CGFloat = 0
    static var yOfDragToMove:CGFloat = 0
    
    
}
