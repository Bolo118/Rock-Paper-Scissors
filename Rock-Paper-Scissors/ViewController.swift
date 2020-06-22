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
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var winnerLabel: UILabel!
    
    var playerScores = 0
    var computerScores = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func playerButtonPressed(_ sender: UIButton) {
        
        player(sender)
        computer()
        winner()
        playerScore.text = String(playerScores)
        computerScore.text = String(computerScores)

    }
    
    func player(_ sender: UIButton) {
        if sender.currentTitle == "rock" {
            playerResult?.text = "Rock"
        } else if sender.currentTitle == "paper" {
            playerResult?.text = "Paper"
        } else if sender.currentTitle == "scissors" {
            playerResult?.text = "Scissors"
        } else {
            print("Something's wrong from player's turn")
        }
    }
    
    func computer() {
        let computerChoice = Int.random(in: 1...3)
        if computerChoice == 1 {
            computerResult.text = "Rock"
        } else if computerChoice == 2 {
            computerResult.text = "Paper"
        } else if computerChoice == 3 {
            computerResult.text = "Scissors"
        } else {
            print("Something's wrong from computer's turn")
        }
    }
    
    func winner() {
        switch (playerResult?.text, computerResult?.text) {
        case ("Rock", "Rock"):
            winnerLabel.text = "DRAW"
        case ("Paper", "Paper"):
            winnerLabel.text = "DRAW"
        case ("Scissors", "Scissors"):
            winnerLabel.text = "DRAW"
        case ("Rock", "Scissors"):
            winnerLabel.text = "Player has won"
            playerScores += 1
        case ("Scissors", "Paper"):
            winnerLabel.text = "Player has won"
            playerScores += 1
        case ("Paper", "Rock"):
            winnerLabel.text = "Player has won"
            playerScores += 1
        case ("Paper", "Scissors"):
            winnerLabel.text = "Computer has won"
            computerScores += 1
        case ("Rock", "Paper"):
            winnerLabel.text = "Computer has won"
            computerScores += 1
        case ("Scissors", "Rock"):
            winnerLabel.text = "Computer has won"
            computerScores += 1
        default:
            print("Something's wrong from winner function")
        }
    }
}

