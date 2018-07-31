//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by MB985 on 22.06.18.
//  Copyright © 2018 MB985. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var celsiusLabel: UILabel!
    
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider! {
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        let tempValue = Int(round(sender.value))
        celsiusLabel.text = "\(tempValue)ºC"
        
        let tempFar = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(tempFar)ºF"
        
    }
}

