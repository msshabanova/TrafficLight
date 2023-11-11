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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redCircle.layer.cornerRadius = 55
        yellowCircle.layer.cornerRadius = 55
        greenCircle.layer.cornerRadius = 55
    }


}

