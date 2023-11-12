//
//  ViewController.swift
//  TrafficLight
//
//  Created by mariya.shabanova on 11.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redCircle: UIView!
    @IBOutlet weak var yellowCircle: UIView!
    @IBOutlet weak var greenCircle: UIView!
    @IBOutlet var changeColorButton: UIButton!
    
    var currentColor: UIColor = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redCircle.alpha = 0.2
        yellowCircle.alpha = 0.2
        greenCircle.alpha = 0.2
        
        changeColorButton.layer.cornerRadius = 10
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        redCircle.layer.cornerRadius = redCircle.frame.width/2
        yellowCircle.layer.cornerRadius = redCircle.frame.width/2
        greenCircle.layer.cornerRadius = redCircle.frame.width/2
    }

    @IBAction func changeColorButtonTapped(_ sender: UIButton) {
        if sender.currentTitle == "Start" {
            sender.setTitle("Next", for: .normal)
            redCircle.alpha = 1
        } else {
            
            switch currentColor {
            case .red:
                redCircle.alpha = 0.2
                yellowCircle.alpha = 1
                currentColor = .yellow
            case .yellow:
                yellowCircle.alpha = 0.2
                greenCircle.alpha = 1
                currentColor = .green
            case .green:
                greenCircle.alpha = 0.2
                currentColor = .red
                sender.setTitle("Start", for: .normal)
            default:
                print("Error")
            }
        }
    }
}

