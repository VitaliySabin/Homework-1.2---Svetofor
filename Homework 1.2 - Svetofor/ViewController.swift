//
//  ViewController.swift
//  Homework 1.2 - Svetofor
//
//  Created by Виталий Сабин on 26.01.2021.
//

import UIKit

enum CurrentLight {
   case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 45
        redLightView.alpha = 0.3
        
        yellowLightView.layer.cornerRadius = 45
        yellowLightView.alpha = 0.3
        
        greenLightView.layer.cornerRadius = 45
        greenLightView.alpha = 0.3
        
        startButton.layer.cornerRadius = 15
        
    }

    @IBAction func startButtonAction() {
        startButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        
        case .red:
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
            currentLight = CurrentLight.yellow
        case .yellow:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            currentLight = CurrentLight.green
        case .green:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            currentLight = CurrentLight.red
        }
    }
    
}

