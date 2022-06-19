//
//  ViewController.swift
//  Dicee game
//
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var score: UILabel!
    var scoreCount = 0
    
    @IBAction func rollButton(_ sender: Any) {
       rollDice()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageViewOne.image = UIImage (imageLiteralResourceName: "DiceSix")
        
//        diceImageViewOne.alpha = 0.5
        
    }
    
    
    func rollDice(){
        let dices: [String] = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        
        let randomNumOne = Int.random(in: 0...5)
        let randomNumTwo = Int.random(in: 0...5)

        diceImageViewOne.image = UIImage (imageLiteralResourceName: dices[randomNumOne])
        
        diceImageViewTwo.image = UIImage (imageLiteralResourceName: dices[randomNumTwo])
        
        if(randomNumOne == randomNumTwo){
            scoreCount += 1
        }
        
        score.text = String(scoreCount)
    }
    
}

