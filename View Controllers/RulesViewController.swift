//
//  RulesViewController.swift
//  FinalP
//
//  Created by Alex Dodson on 5/9/20.
//  Copyright © 2020 Adam Dodson. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class RulesViewController: UIViewController {
    
    // Variables for images
    @IBOutlet weak var rulesR: UIImageView!
    @IBOutlet weak var CloudRule: UIImageView!
    @IBOutlet weak var frogRules: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Moves the Cloud
        moveIt(CloudRule, 10)
        moveIt(CloudRule,5)
        // Moves the TItle
        moveIt2(rulesR)
        moveIt2(rulesR)
        // Moves the frog
        moveIt3(frogRules, 2)
        moveIt3(frogRules, 2)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Set up video in the background
    }
    
    // Moves the Cloud
    func moveIt(_ imageView: UIImageView,_ speed:CGFloat) {
        let speeds = speed
        
        let averageSpeed = 13
        
        UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveLinear, animations: {
            imageView.frame.origin.x = self.view.frame.size.width
            
        }, completion: { (_) in
            imageView.frame.origin.x = -imageView.frame.size.width
            self.moveIt(self.CloudRule,speeds)
        })
    }
    
    // Moves the Title
    func moveIt2(_ imageView: UIImageView) {
        
        let averageSpeed = 4
        
        UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveEaseIn, animations: {
            imageView.frame.origin.y = 135
            
        }, completion: { (_) in
            imageView.frame.origin.y = 135
            self.moveIt2(self.rulesR)
        })
    }
    
    // Moves the frog
    func moveIt3(_ imageView: UIImageView,_ speed:CGFloat) {
        let speeds = speed
        
        let averageSpeed = 20
        
        UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveLinear, animations: {
            imageView.frame.origin.x = -self.view.frame.size.width
            
        }, completion: { (_) in
            imageView.frame.origin.x = imageView.frame.size.width
            self.moveIt3(self.frogRules,speeds)
        })
    }
}
