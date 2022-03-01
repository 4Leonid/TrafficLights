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
        redLightView.layer.cornerRadius = redLightView.layer.frame.width / 2
        redLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = 76
        yellowLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = 75
        greenLightView.alpha = 0.3
        
    }


}

