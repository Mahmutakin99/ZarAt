//
//  ViewController.swift
//  AutoLayout-iOS13
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Çoklu yorum satiri
        bu sekilde yapilir. */
        
        //diceImageView1 image = #imageLiteral(resourceName: "DiceFive")
        // bu sekilde yapilir.
        //Kim           . Ne   = Deger
        //diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        
        // Alternatif çözüm
        //diceImageView1.image = UIImage(named: "DiceSix")
        
        
        //diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        resultLabel.text = ""
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?){
        if motion == .motionShake{
            rollButtonPressed(UIButton())
        }
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceImage = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        let dice1 = Int.random(in: 0...5)
        let dice2 = Int.random(in: 0...5)
        
        //animasyon ve değeri gösterme
        UIView.transition(with: diceImageView1, duration: 0.3, options: .transitionFlipFromLeft, animations: { self.diceImageView1.image = diceImage[dice1]}, completion: nil)
        
        UIView.transition(with: diceImageView2, duration: 0.3, options: .transitionFlipFromRight, animations: { self.diceImageView2.image = diceImage[dice2]}, completion: nil)
        
        
        
        let total = dice1 + dice2 + 2
        self.resultLabel.text = "Toplam Sonuç: \(total)"
        
    }
    
}

