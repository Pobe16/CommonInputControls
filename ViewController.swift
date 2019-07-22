//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Mikolaj Lukasik on 22/07/2019.
//  Copyright © 2019 Mikolaj Lukasik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    
    @IBOutlet var button: UIButton!
    @IBOutlet var toggle: UISwitch!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("Button was tapped!")
        var toShow: String = ""
        
        if toggle.isOn {
            toShow += "The switch is on!"
        } else {
            toShow += "The switch is off!"
        }
        toShow += " "
        toShow += "Slider at: " + String(slider.value)
        
        textField.text = toShow
        
     }

    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        textField.text = "Tapped. X: \(location.x), Y: \(location.y)"
    }
}

