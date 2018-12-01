//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Jean Carlo da Silva on 24/11/18.
//  Copyright © 2018 Jean Carlo da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var lblSelectedTemperature: UILabel!
    @IBOutlet weak var tfTemperatura: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    var isCelcius : Bool = false
    

    @IBAction func Converter(_ sender: Any) {
        
        let input = Float(tfTemperatura.text!)
        
        if(isCelcius)
        {
            lblSelectedTemperature.text = "em Farenheit"
            lblResult.text = String(format: "%.0fº", Conversor.c2f(valor: input!))
        }
        else
        {
            lblSelectedTemperature.text = "em Celcius"
            lblResult.text = String(format: "%.0fº",Conversor.f2c(valor: input!))
        }
        
    }
    @IBAction func TemperatureSelector(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            isCelcius = false
            
        case 1:
            isCelcius = true
            
        default:
            break
        }
        
    }
}

