//
//  ViewController.swift
//  FinalP
//
//  Created by Alex Dodson on 5/9/20.
//  Copyright © 2020 Adam Dodson. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

var score: Int = 0

class ViewController: UIViewController {
    
    // Timer for program
    var timer: Timer!
    
    // Button that clicks when time runs out
    @IBOutlet weak var timer1: UIButton!
    
    // Label for timer
    @IBOutlet weak var TimeLeft: UILabel!
    
    // Variable for timer
    var loserCount: Double = 0
    
    // Variables for video player
    var videoPlayer:AVPlayer?
    var videoPlayerLayer:AVPlayerLayer?
    @IBOutlet weak var Score: UILabel!
    
    // Variables for Lily hitboxes
    @IBOutlet weak var LilyButton2: UIButton!
    @IBOutlet weak var LilyButton5: UIButton!
    @IBOutlet weak var LilyButton6: UIButton!
    @IBOutlet weak var LilyButton7: UIButton!
    @IBOutlet weak var LilyButton8: UIButton!
    @IBOutlet weak var LilyButton9: UIButton!
    @IBOutlet weak var LilyButton10: UIButton!
    
    // Variables for Lily images
    @IBOutlet weak var LilyImage2: UIImageView!
    @IBOutlet weak var LilyImage5: UIImageView!
    @IBOutlet weak var LilyImage6: UIImageView!
    @IBOutlet weak var LilyImage7: UIImageView!
    @IBOutlet weak var LilyImage8: UIImageView!
    @IBOutlet weak var LilyImage9: UIImageView!
    @IBOutlet weak var LilyImage10: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        schedualTimerWithTimeInterval()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Set up video in the background
        setUpVideo()
    }
    
    // Sets up video
    func setUpVideo() {
        
        // Get the path to the resource in the bundle
        let bundlePath = Bundle.main.path(forResource: "m1", ofType: "mp4")
        guard bundlePath != nil else {
            return
        }
        
        // Create a URL from it
        let url = URL(fileURLWithPath: bundlePath!)
        
        // Create the video player item
        let item = AVPlayerItem(url: url)
        
        // Create the player
        videoPlayer = AVPlayer(playerItem: item)
        
        // Create the layer
        videoPlayerLayer = AVPlayerLayer(player: videoPlayer!)
        
        // Adjust the size and frame
        videoPlayerLayer?.frame = CGRect(x: -self.view.frame.size.width*1.5, y: 0, width: self.view.frame.size.width*4, height: self.view.frame.size.height)
        view.layer.insertSublayer(videoPlayerLayer!, at: 0)
        
        // Add it to the view and play it
        videoPlayer?.playImmediately(atRate: 0.3)
    }
    
    // Moves items if SecondLily is clicked
    @IBAction func SecondLily(_ sender: Any) {
        LilyButton2.center.y = 12
        LilyImage2.center.y = 12
        
        LilyButton5.center.y = LilyButton5.center.y + 133
        LilyImage5.center.y = LilyImage5.center.y + 133
        
        LilyButton6.center.y = LilyButton6.center.y + 133
        LilyImage6.center.y = LilyImage6.center.y + 133
        
        LilyButton7.center.y = LilyButton7.center.y + 133
        LilyImage7.center.y = LilyImage7.center.y + 133
        
        LilyButton8.center.y = LilyButton8.center.y + 133
        LilyImage8.center.y = LilyImage8.center.y + 133
        
        LilyButton9.center.y = LilyButton9.center.y + 133
        LilyImage9.center.y = LilyImage9.center.y + 133
        
        LilyButton10.center.y = LilyButton10.center.y + 133
        LilyImage10.center.y = LilyImage10.center.y + 133
        
        // Update score
        score = score + 10
        Score.text = "Score: \(score)"
        
        loserCount = loserCount + 0.5
        
        // Send button to random spot
        LilyButton2.center.x = 52.5
        LilyImage2.center.x = 52.5
        let randomInt1 = Int.random(in: 1..<5)
        LilyButton2.center.x = LilyButton2.center.x + CGFloat((103 * randomInt1)) - 103
        LilyImage2.center.x = LilyImage2.center.x +  CGFloat((103 * randomInt1)) - 103
    }
    
    // Moves items if FifthLily is clicked
    @IBAction func FifthLily(_ sender: Any) {
        LilyButton2.center.y = LilyButton2.center.y + 133
        LilyImage2.center.y = LilyImage2.center.y + 133
        
        LilyButton5.center.y = 12
        LilyImage5.center.y = 12
        
        LilyButton6.center.y = LilyButton6.center.y + 133
        LilyImage6.center.y = LilyImage6.center.y + 133
        
        LilyButton7.center.y = LilyButton7.center.y + 133
        LilyImage7.center.y = LilyImage7.center.y + 133
        
        LilyButton8.center.y = LilyButton8.center.y + 133
        LilyImage8.center.y = LilyImage8.center.y + 133
        
        LilyButton9.center.y = LilyButton9.center.y + 133
        LilyImage9.center.y = LilyImage9.center.y + 133
        
        LilyButton10.center.y = LilyButton10.center.y + 133
        LilyImage10.center.y = LilyImage10.center.y + 133
        
        // Update score
        score = score + 10
        Score.text = "Score: \(score)"
        
        loserCount = loserCount + 0.5
        
        // Send button to random spot
        LilyButton5.center.x = 52.5
        LilyImage5.center.x = 52.5
        let randomInt2 = Int.random(in: 1..<5)
        LilyButton5.center.x = LilyButton5.center.x + CGFloat((103 * randomInt2)) - 103
        LilyImage5.center.x = LilyImage5.center.x +  CGFloat((103 * randomInt2)) - 103
    }
    
    // Moves items if SixthLily is clicked
    @IBAction func SixthLily(_ sender: Any) {
        LilyButton2.center.y = LilyButton2.center.y + 133
        LilyImage2.center.y = LilyImage2.center.y + 133
        
        LilyButton5.center.y = LilyButton5.center.y + 133
        LilyImage5.center.y = LilyImage5.center.y + 133
        
        LilyButton6.center.y = 12
        LilyImage6.center.y = 12
        
        LilyButton7.center.y = LilyButton7.center.y + 133
        LilyImage7.center.y = LilyImage7.center.y + 133
        
        LilyButton8.center.y = LilyButton8.center.y + 133
        LilyImage8.center.y = LilyImage8.center.y + 133
        
        LilyButton9.center.y = LilyButton9.center.y + 133
        LilyImage9.center.y = LilyImage9.center.y + 133
        
        LilyButton10.center.y = LilyButton10.center.y + 133
        LilyImage10.center.y = LilyImage10.center.y + 133
        
        // Update score
        score = score + 10
        Score.text = "Score: \(score)"
        
        loserCount = loserCount + 0.5
        
        // Send button to random spot
        LilyButton6.center.x = 52.5
        LilyImage6.center.x = 52.5
        let randomInt3 = Int.random(in: 1..<5)
        LilyButton6.center.x = LilyButton6.center.x + CGFloat((103 * randomInt3)) - 103
        LilyImage6.center.x = LilyImage6.center.x +  CGFloat((103 * randomInt3)) - 103
    }
    
    // Moves items if SeventhLily is clicked
    @IBAction func SeventhLily(_ sender: Any) {
        LilyButton2.center.y = LilyButton2.center.y + 133
        LilyImage2.center.y = LilyImage2.center.y + 133
        
        LilyButton5.center.y = LilyButton5.center.y + 133
        LilyImage5.center.y = LilyImage5.center.y + 133
        
        LilyButton6.center.y = LilyButton6.center.y + 133
        LilyImage6.center.y = LilyImage6.center.y + 133
        
        LilyButton7.center.y = 12
        LilyImage7.center.y = 12
        
        LilyButton8.center.y = LilyButton8.center.y + 133
        LilyImage8.center.y = LilyImage8.center.y + 133
        
        LilyButton9.center.y = LilyButton9.center.y + 133
        LilyImage9.center.y = LilyImage9.center.y + 133
        
        LilyButton10.center.y = LilyButton10.center.y + 133
        LilyImage10.center.y = LilyImage10.center.y + 133
        
        // Update score
        score = score + 10
        Score.text = "Score: \(score)"
        
        loserCount = loserCount + 0.5
        
        // Send button to random spot
        LilyButton7.center.x = 52.5
        LilyImage7.center.x = 52.5
        let randomInt4 = Int.random(in: 1..<5)
        LilyButton7.center.x = LilyButton7.center.x + CGFloat((103 * randomInt4)) - 103
        LilyImage7.center.x = LilyImage7.center.x +  CGFloat((103 * randomInt4)) - 103
    }
    
    // Moves items if EigthLily is clicked
    @IBAction func EigthLily(_ sender: Any) {
        LilyButton2.center.y = LilyButton2.center.y + 133
        LilyImage2.center.y = LilyImage2.center.y + 133
        
        LilyButton5.center.y = LilyButton5.center.y + 133
        LilyImage5.center.y = LilyImage5.center.y + 133
        
        LilyButton6.center.y = LilyButton6.center.y + 133
        LilyImage6.center.y = LilyImage6.center.y + 133
        
        LilyButton7.center.y = LilyButton7.center.y + 133
        LilyImage7.center.y = LilyImage7.center.y + 133
        
        LilyButton8.center.y = 12
        LilyImage8.center.y = 12
        
        LilyButton9.center.y = LilyButton9.center.y + 133
        LilyImage9.center.y = LilyImage9.center.y + 133
        
        LilyButton10.center.y = LilyButton10.center.y + 133
        LilyImage10.center.y = LilyImage10.center.y + 133
        
        // Update score
        score = score + 10
        Score.text = "Score: \(score)"
        
        loserCount = loserCount + 0.5
        
        // Send button to random spot
        LilyButton8.center.x = 52.5
        LilyImage8.center.x = 52.5
        let randomInt5 = Int.random(in: 1..<5)
        LilyButton8.center.x = LilyButton8.center.x + CGFloat((103 * randomInt5)) - 103
        LilyImage8.center.x = LilyImage8.center.x +  CGFloat((103 * randomInt5)) - 103
    }
    
    // Moves items if NinthLily is clicked
    @IBAction func NinthLily(_ sender: Any) {
        LilyButton2.center.y = LilyButton2.center.y + 133
        LilyImage2.center.y = LilyImage2.center.y + 133
        
        LilyButton5.center.y = LilyButton5.center.y + 133
        LilyImage5.center.y = LilyImage5.center.y + 133
        
        LilyButton6.center.y = LilyButton6.center.y + 133
        LilyImage6.center.y = LilyImage6.center.y + 133
        
        LilyButton7.center.y = LilyButton7.center.y + 133
        LilyImage7.center.y = LilyImage7.center.y + 133
        
        LilyButton8.center.y = LilyButton8.center.y + 133
        LilyImage8.center.y = LilyImage8.center.y + 133
        
        LilyButton9.center.y = 12
        LilyImage9.center.y = 12
        
        LilyButton10.center.y = LilyButton10.center.y + 133
        LilyImage10.center.y = LilyImage10.center.y + 133
        
        // Update score
        score = score + 10
        Score.text = "Score: \(score)"
        
        loserCount = loserCount + 0.5
        
        // Send button to random spot
        LilyButton9.center.x = 52.5
        LilyImage9.center.x = 52.5
        let randomInt6 = Int.random(in: 1..<5)
        LilyButton9.center.x = LilyButton9.center.x + CGFloat((103 * randomInt6)) - 103
        LilyImage9.center.x = LilyImage9.center.x +  CGFloat((103 * randomInt6)) - 103
    }
    
    // Moves items if TenthLily is clicked
    @IBAction func TenthLily(_ sender: Any) {
        LilyButton2.center.y = LilyButton2.center.y + 133
        LilyImage2.center.y = LilyImage2.center.y + 133
        
        LilyButton5.center.y = LilyButton5.center.y + 133
        LilyImage5.center.y = LilyImage5.center.y + 133
        
        LilyButton6.center.y = LilyButton6.center.y + 133
        LilyImage6.center.y = LilyImage6.center.y + 133
        
        LilyButton7.center.y = LilyButton7.center.y + 133
        LilyImage7.center.y = LilyImage7.center.y + 133
        
        LilyButton8.center.y = LilyButton8.center.y + 133
        LilyImage8.center.y = LilyImage8.center.y + 133
        
        LilyButton9.center.y = LilyButton9.center.y + 133
        LilyImage9.center.y = LilyImage9.center.y + 133
        
        LilyButton10.center.y = 12
        LilyImage10.center.y = 12
        
        // Update score
        score = score + 10
        Score.text = "Score: \(score)"
        
        loserCount = loserCount + 0.5
        
        // Send button to random spot
        LilyButton10.center.x = 52.5
        LilyImage10.center.x = 52.5
        let randomInt6 = Int.random(in: 1..<5)
        LilyButton10.center.x = LilyButton10.center.x + CGFloat((103 * randomInt6)) - 103
        LilyImage10.center.x = LilyImage10.center.x +  CGFloat((103 * randomInt6)) - 103
    }
    
    // If loss occurs, generate score values anyway
    @IBAction func NoTouch(_ sender: Any) {
    }
    @IBAction func NoTouch2(_ sender: Any) {
    }
    
    // Calls updateCounting and sets up timer
    func schedualTimerWithTimeInterval() {
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(self.updateCounting), userInfo: nil, repeats: true)
    }
    
    // Degrades value of loserCount and ends game if below 0
    @objc func updateCounting() {
        loserCount = loserCount - 1
        if (loserCount < 0) {
            timer1.sendActions(for: .touchUpInside)
        }
        TimeLeft.text = "Time: \(loserCount)"
    }
}
