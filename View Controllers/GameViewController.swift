//
//  GameViewController.swift
//  FinalP
//
//  Created by Alex Dodson on 5/9/20.
//  Copyright © 2020 Adam Dodson. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class GameViewController: UIViewController {
    
    // Variables for images
    @IBOutlet weak var CloudGame: UIImageView!
    @IBOutlet weak var GameOver: UIImageView!
    @IBOutlet weak var frogGame: UIImageView!
    @IBOutlet weak var YouScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        YouScore.text = "You Scored: \(score)"
        
        // Moves the cloud
        moveIt(CloudGame, 10)
        moveIt(CloudGame,5)
        // Moves the Title
        moveIt2(GameOver)
        moveIt2(GameOver)
        // Moves the frog
        moveIt3(frogGame, 2)
        moveIt3(frogGame, 2)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        // Set up video in the background
    }
    
    // Moves the cloud
    func moveIt(_ imageView: UIImageView,_ speed:CGFloat) {
        let speeds = speed
        
        let averageSpeed = 13
        
        UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveLinear, animations: {
            imageView.frame.origin.x = self.view.frame.size.width
            
        }, completion: { (_) in
            imageView.frame.origin.x = -imageView.frame.size.width
            self.moveIt(self.CloudGame,speeds)
        })
    }
    
    // Moves the title
    func moveIt2(_ imageView: UIImageView) {
        
        let averageSpeed = 4
        
        UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveEaseIn, animations: {
            imageView.frame.origin.y = 135
            
        }, completion: { (_) in
            imageView.frame.origin.y = 135
            self.moveIt2(self.GameOver)
        })
    }
    
    // Moves the frog
    func moveIt3(_ imageView: UIImageView,_ speed:CGFloat) {
        let speeds = speed
        
        let averageSpeed = 20
        
        UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveLinear, animations: {
            imageView.frame.origin.x = self.view.frame.size.width
            
        }, completion: { (_) in
            imageView.frame.origin.x = -imageView.frame.size.width
            self.moveIt3(self.frogGame,speeds)
        })
    }
    
    @IBAction func StartOver(_ sender: Any) {
        score = 0
    }
    
    @IBAction func MainMenu(_ sender: Any) {
        score = 0
    }
}
