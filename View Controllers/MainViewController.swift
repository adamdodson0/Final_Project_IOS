//
//  MainViewController.swift
//  FinalP
//
//  Created by Alex Dodson on 5/9/20.
//  Copyright © 2020 Adam Dodson. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class MainViewController: UIViewController {
    
    // Variables for moving images
    @IBOutlet weak var Cloud1: UIImageView!
    @IBOutlet weak var CloudJump: UIImageView!
    @IBOutlet weak var Frog: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Moves the Title
        moveIt(Cloud1)
        moveIt(Cloud1)
        // Moves the Cloud
        moveIt2(CloudJump, 5)
        moveIt2(CloudJump, 5)
        // Moves the frog
        moveIt3(Frog, 2)
        moveIt3(Frog, 2)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Set up video in the background
    }
    
    // Moves the Title
    func moveIt(_ imageView: UIImageView) {
        
        let averageSpeed = 4
        
        UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveEaseIn, animations: {
            imageView.frame.origin.y = 180
            
        }, completion: { (_) in
            imageView.frame.origin.y = 180
            self.moveIt(self.Cloud1)
        })
    }
    
    // Moves the Cloud
    func moveIt2(_ imageView: UIImageView,_ speed:CGFloat) {
        let speeds = speed
        
        let averageSpeed = 13
        
        UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveLinear, animations: {
            imageView.frame.origin.x = self.view.frame.size.width
            
        }, completion: { (_) in
            imageView.frame.origin.x = -imageView.frame.size.width
            self.moveIt2(self.CloudJump,speeds)
        })
    }
    
    // Moves the Frog
    func moveIt3(_ imageView: UIImageView,_ speed:CGFloat) {
        let speeds = speed
        
        let averageSpeed = 20
        
        UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveLinear, animations: {
            imageView.frame.origin.x = self.view.frame.size.width
            
        }, completion: { (_) in
            imageView.frame.origin.x = -imageView.frame.size.width
            self.moveIt3(self.Frog,speeds)
        })
    }
}
