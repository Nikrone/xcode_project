//
//  ViewController.swift
//  TConverter
//
//  Created by Evgeniy Nosko on 30.03.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrengeitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    

    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round (sender.value))
        cenliusLabel.text = "\(temperatureCelsius) ºС"
        let fahrengeitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrengeitLabel.text = "\(fahrengeitTemperature)ºF"
    }
}

