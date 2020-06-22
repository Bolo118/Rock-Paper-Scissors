//
//  DataModel.swift
//  Rock-Paper-Scissors
//
//  Created by Adithep on 6/21/20.
//  Copyright © 2020 Adithep. All rights reserved.
//

import Foundation
import UIKit

struct DataModel {
    
    var playerResult: UILabel!
    var computerResult: UILabel!
    var winnerLabel: UILabel!
    
    var computerImage: UIImageView!
    var playerImage: UIImageView!
    
    var playerScores = 0
    var computerScores = 0
    
    func player(_ sender: UIButton) {
        if sender.currentTitle == "rock" {
            playerResult?.text = "Rock"
            playerImage?.image = UIImage(named: "rock-player")
        } else if sender.currentTitle == "paper" {
            playerResult?.text = "Paper"
            playerImage?.image = UIImage(named: "paper-player")
        } else if sender.currentTitle == "scissors" {
            playerResult?.text = "Scissors"
            playerImage?.image = UIImage(named: "scissors-player")
        } else {
            print("Something's wrong from player's turn")
        }
    }
    
    func computer() {
        let computerChoice = Int.random(in: 1...3)
        if computerChoice == 1 {
            computerResult?.text = "Rock"
            computerImage.image = UIImage(named: "rock-computer")
        } else if computerChoice == 2 {
            computerResult?.text = "Paper"
            computerImage.image = UIImage(named: "paper-computer")
        } else if computerChoice == 3 {
            computerResult?.text = "Scissors"
            computerImage.image = UIImage(named: "scissors-computer")
        } else {
            print("Something's wrong from computer's turn")
        }
    }
    
    mutating func winner() {
        switch (playerResult?.text, computerResult?.text) {
        case ("Rock", "Rock"):
            winnerLabel?.text = "DRAW"
        case ("Paper", "Paper"):
            winnerLabel?.text = "DRAW"
        case ("Scissors", "Scissors"):
            winnerLabel?.text = "DRAW"
        case ("Rock", "Scissors"):
            winnerLabel?.text = "Player has won"
            playerScores += 1
        case ("Scissors", "Paper"):
            winnerLabel?.text = "Player has won"
            playerScores += 1
        case ("Paper", "Rock"):
            winnerLabel?.text = "Player has won"
            playerScores += 1
        case ("Paper", "Scissors"):
            winnerLabel?.text = "Computer has won"
            computerScores += 1
        case ("Rock", "Paper"):
            winnerLabel?.text = "Computer has won"
            computerScores += 1
        case ("Scissors", "Rock"):
            winnerLabel?.text = "Computer has won"
            computerScores += 1
        default:
            print("Something's wrong from winner function")
        }
    }
}
