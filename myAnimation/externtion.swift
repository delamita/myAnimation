//
//  externtion.swift
//  myAnimation
//
//  Created by 费克翔 on 2017/12/4.
//  Copyright © 2017年 Crazzy. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    
    
    /// 设置默认的阴影
    func setShadow() {
        self.layer.shadowOffset = CGSize(width: 0, height: 0);
        self.layer.shadowColor = UIColor.lightGray.cgColor;
        self.layer.shadowRadius = 8
        self.layer.shadowOpacity = 0.8
    }
    
    func setShadow(color: CGColor,shadowRadius: CGFloat, shadowOpacity: Float) {
        self.layer.shadowOffset = CGSize(width: 0, height: 0);
        self.layer.shadowColor = color
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = shadowOpacity
    }
    
    
    func corner(byRoundingCorners corners: UIRectCorner, cornerRadius radii: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radii, height: radii))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
    }
    
}
