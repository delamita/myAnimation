//
//  touchDown.swift
//  myAnimation
//
//  Created by 费克翔 on 2017/11/29.
//  Copyright © 2017年 Crazzy. All rights reserved.
//

import UIKit

class touchDown: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var fromLab: UITextField!
    @IBOutlet weak var toLab: UITextField!
    @IBOutlet weak var durationLab: UITextField!
    @IBOutlet weak var editorView: UIView!
    
    var from:Float = 1.0
    var to:Float = 0.9
    var duration:CFTimeInterval = 0.3
    
//    let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editorView.setShadow()
        
        self.view.insertSubview(button, at: 0)


        editorView.frame = CGRect(x: 0, y: 64, width: self.view.frame.width, height: 0)
        
//        scaleAnimation.autoreverses = false
//        scaleAnimation.fillMode = kCAFillModeForwards
//        scaleAnimation.isRemovedOnCompletion = false
//        scaleAnimation.duration = 0.3
        
        button.layer.cornerRadius = button.frame.width/2
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTouchDown(_ sender: Any) {
        
        button.animation.touchDown(from: from, to: to, duration: duration)
        
//        scaleAnimation.fromValue = NSNumber(value: from)
//        scaleAnimation.toValue = NSNumber(value: to)
//
//        button.layer.add(scaleAnimation, forKey: "scaleAnimation")

    }
    
    @IBAction func butTouchUp(_ sender: Any) {
        
        button.animation.touchDown(from: to, to: from, duration: duration)
        
//        scaleAnimation.fromValue = NSNumber(value: to)
//        scaleAnimation.toValue = NSNumber(value: from)
//
//        button.layer.add(scaleAnimation, forKey: "scaleAnimation")
        
    }
    

    
    @IBAction func refresh(_ sender: Any) {
        
        if fromLab.text != nil && toLab.text != nil && durationLab.text != nil{
            
            from = Float(fromLab.text!)!
            to = Float(toLab.text!)!
            let time = Double(durationLab.text!)!
            duration = time
            
        }
        
    }

    
    @IBAction func show(_ sender: Any) {
        
        
        editorView.animation.drawOut(toFrame: CGRect(x: 0, y: 64, width: self.view.frame.width, height: 120), duration: 0.3)
        
        
    }
    

    
    @IBAction func hideEidtor(_ sender: Any) {
        
        self.view.endEditing(true)
        refresh(sender)
        
        editorView.animation.drawOut(toFrame: CGRect(x: 0, y: 64, width: self.view.frame.width, height: 0), duration: 0.3)
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
