//
//  Leaderboards.swift
//  FinalP
//
//  Created by Alex Dodson on 5/10/20.
//  Copyright © 2020 Adam Dodson. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

var highscore: Int = 0
var highscore2: Int = 0
var highscore3: Int = 0
var highscore4: Int = 0
var highscore5: Int = 0

class Leaderboards: UIViewController {
    
    @IBOutlet weak var Highscore: UILabel!
    @IBOutlet weak var Highscore2: UILabel!
    @IBOutlet weak var Highscore3: UILabel!
    @IBOutlet weak var Highscore4: UILabel!
    @IBOutlet weak var Highscore5: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (score > highscore) {
            highscore5 = highscore4
            highscore4 = highscore3
            highscore3 = highscore2
            highscore2 = highscore
            highscore = score
            printScores()
            return
        }
        if (score > highscore2) {
            highscore5 = highscore4
            highscore4 = highscore3
            highscore3 = highscore2
            highscore2 = score
            printScores()
            return
        }
        if (score > highscore3) {
            highscore5 = highscore4
            highscore4 = highscore3
            highscore3 = score
            printScores()
            return
        }
        if (score > highscore4) {
            highscore5 = highscore4
            highscore4 = score
            printScores()
            return
        }
        if (score > highscore5) {
            highscore5 = score
            printScores()
            return
        }
        // Prints scores if no points
        printScores()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Set up video in the background
    }
    
    @IBAction func StartOver(_ sender: Any) {
        score = 0
    }
    
    @IBAction func MainMenu(_ sender: Any) {
        score = 0
    }
    
    private func printScores() {
        Highscore.text = "1: \(highscore)"
        Highscore2.text = "2: \(highscore2)"
        Highscore3.text = "3: \(highscore3)"
        Highscore4.text = "4: \(highscore4)"
        Highscore5.text = "5: \(highscore5)"
    }
}

