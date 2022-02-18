//
//  Roll_Bet_ViewController.swift
//  Dicee-iOS13
//
//  Created by Samuel Gomez on 2/16/22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import UIKit

class Roll_Bet_ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

   
        
        let diceArray = [UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"),UIImage(named: "DiceFour"),UIImage(named: "DiceFive"),UIImage(named: "DiceSix")]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
         
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
