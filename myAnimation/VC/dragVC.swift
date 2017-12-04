//
//  dragVC.swift
//  myAnimation
//
//  Created by 费克翔 on 2017/12/4.
//  Copyright © 2017年 Crazzy. All rights reserved.
//

import UIKit

class dragVC: UIViewController {
    
    var x: CGFloat = 0
    var y: CGFloat = 0
    
    @IBOutlet weak var centerlab: UILabel!
    @IBOutlet weak var locationLab: UILabel!
    @IBOutlet weak var xlab: UILabel!
    @IBOutlet weak var ylab: UILabel!
    @IBOutlet weak var newCenterLab: UILabel!
    
    var newCenter = CGPoint()
    
    
    @IBOutlet var pan: UIPanGestureRecognizer!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func drag(_ sender: UIPanGestureRecognizer) {
        
        button.animation.dragToMove(sender: sender)
        
        if sender.state == .began {
            let hand = sender.location(in: self.view)
            x = hand.x-button.center.x
            y = hand.y-button.center.y
        }

        newCenter = CGPoint(x: sender.location(in: self.view).x-x, y: sender.location(in: self.view).y-y)

        button.center = newCenter


        centerlab.text = String(describing: view.center)
        locationLab.text = String(describing: sender.location(in: self.view))
        xlab.text = String(describing: x)
        ylab.text = String(describing: y)
        newCenterLab.text = String(describing: newCenter)
        
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
