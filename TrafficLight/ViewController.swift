//
//  ViewController.swift
//  TrafficLight
//
//  Created by Екатерина Кузнецова on 21.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redTrafficLightView: UIView!
    @IBOutlet var yellowTrafficLightView: UIView!
    @IBOutlet var greenTrafficLightView: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLightView.layer.cornerRadius = 50
        yellowTrafficLightView.layer.cornerRadius = 50
        greenTrafficLightView.layer.cornerRadius = 50
        trafficLightButton.layer.cornerRadius = 20
    }


    @IBAction func switchTrafficLightButtonTapped() {
        trafficLightButton.setTitle("NEXT", for: .normal)
        
        if redTrafficLightView.alpha == yellowTrafficLightView.alpha {
            redTrafficLightView.alpha = 1
            greenTrafficLightView.alpha = 0.3
        } else if redTrafficLightView.alpha > 0.3
                    && yellowTrafficLightView.alpha == greenTrafficLightView.alpha {
            yellowTrafficLightView.alpha = 1
            redTrafficLightView.alpha = 0.3
        } else if yellowTrafficLightView.alpha > 0.3
                    && redTrafficLightView.alpha == greenTrafficLightView.alpha {
            greenTrafficLightView.alpha = 1
            yellowTrafficLightView.alpha = 0.3
        }
    }
}

