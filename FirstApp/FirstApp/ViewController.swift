//
//  ViewController.swift
//  FirstApp
//
//  Created by User on 03/06/2020.
//  Copyright © 2020 Daria Zenina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftScore == 2 && rightScore == 14
        {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftScore == 14 && rightScore == 2
        {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else if leftNumber > rightNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
    
}

