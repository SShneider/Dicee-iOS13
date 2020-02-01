//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceTwo: UIImageView!
    @IBOutlet weak var diceOne: UIImageView!
    var leftDiceNumber = 1;
    var rightDiceNumber = 5;
    let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceSix"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFive")];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceOne.image = diceArray[leftDiceNumber]
        diceTwo.image = diceArray[rightDiceNumber]
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
    }
}



