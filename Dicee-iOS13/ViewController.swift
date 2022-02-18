//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Updated by Samuel Gomez on 08/02/2022.
//  Version 1.1
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gameBackground: UIImageView!
    
    @IBOutlet weak var dealerNumberLabel: UILabel!
    
    @IBOutlet weak var gameResultLabel: UILabel!
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var cacinoLogo: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Who.What = Value
        //Who is the element you want to change
        //What is the property you want to change
        //Value is the value you to set it to

    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        
        let diceArray = [UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"),UIImage(named: "DiceFour"),UIImage(named: "DiceFive"),UIImage(named: "DiceSix")]
        
        let randomNum1 = Int.random(in: 0...5)
        
        let randomNum2 = Int.random(in: 0...5)
        
        let dealerNum = Int.random(in: 2...12)
        
        diceImageView1.image = diceArray[randomNum1]
    
        diceImageView2.image = diceArray[randomNum2]
        
        dealerNumberLabel.text = (String(dealerNum))
        //Here I declare a variable for the random number of the dealer
        let totalDiceNum = (randomNum1 + 1) + (randomNum2 + 2)
        
        //Here I sum the two number of the dicees so I can compare it later with the number of the dealer
        
        if dealerNum > totalDiceNum {
            gameResultLabel.text = "YOU LOSE"
            gameBackground.image = UIImage(named: "loser")
            dealerNumberLabel.textColor = UIColor.red
            gameResultLabel.textColor = UIColor.red
            cacinoLogo.image = UIImage(named: "DiceeLogo")
            
            //Depending on what is the result of the logical test, I or the code will change some properties of labels, the background, and the cacino logo.
        }
        else if dealerNum == totalDiceNum{
            gameResultLabel.text = "IS A DRAW"
            gameBackground.image = UIImage(named: "handsake")
            dealerNumberLabel.textColor = UIColor.white
            gameResultLabel.textColor = UIColor.white
            cacinoLogo.image = UIImage(named: "DiceeLogo")
        }
        else {
            gameBackground.image = UIImage(named: "fireworks")
            gameResultLabel.text = "YOU WIN!!"
            dealerNumberLabel.textColor = UIColor.green
            gameResultLabel.textColor = UIColor.green
            cacinoLogo.image = UIImage(named: "jackpot")

            
        }
        
        
        
       
    }
    

    
    
}

