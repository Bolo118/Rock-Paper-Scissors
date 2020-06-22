//
//  ViewController.swift
//  Rock-Paper-Scissors
//
//  Created by Adithep on 6/20/20.
//  Copyright © 2020 Adithep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var computerScore: UILabel!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var computerResult: UILabel!
    @IBOutlet weak var playerResult: UILabel!
    
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var computerImage: UIImageView!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    var data = DataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func playerButtonPressed(_ sender: UIButton) {
        
        data.playerResult = self.playerResult
        data.computerResult = self.computerResult
        data.winnerLabel = self.winnerLabel
        data.playerImage = self.playerImage
        data.computerImage = self.computerImage
        
        data.player(sender)
        data.computer()
        data.winner()
        
        playerScore.text = String(data.playerScores)
        computerScore.text = String(data.computerScores)

    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        
        data.playerScores = 0
        data.computerScores = 0
        playerScore.text = String(data.playerScores)
        computerScore.text = String(data.computerScores)
        
        data.playerResult?.text = " "
        data.computerResult?.text = " "
        data.winnerLabel?.text = " "

    }
    
}

