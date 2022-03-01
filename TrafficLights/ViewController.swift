//
//  ViewController.swift
//  TrafficLights
//
//  Created by EkaterinaP on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 75
        redLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = 75
        yellowLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = 75
        greenLightView.alpha = 0.3
        startButton.layer.cornerRadius = 10
        
    }
    @IBAction func startButtonPressed() {
        
        if greenLightView.alpha < yellowLightView.alpha {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1.0
        } else if yellowLightView.alpha < redLightView.alpha {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1.0
        } else if redLightView.alpha < 1 {
            redLightView.alpha = 1.0
            greenLightView.alpha = 0.3
            startButton.setTitle("NEXT", for: .normal)
        }
    }
}

