//
//  ViewController.swift
//  Color Maker Slider
//
//  Created by Marc Gomez Iranzo on 19/5/17.
//  Copyright © 2017 Marc Gomez Iranzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redControl:UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!
    
    var currentRed : CGFloat = 0.0
    var currentGreen : CGFloat = 0.0
    var currentBlue : CGFloat = 0.0
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set colorView on launch
        changeColorComponent()
    }
    
    // MARK: Actions
    
    @IBAction func colorChanged(_ sender: UISlider) {
        switch sender.restorationIdentifier! {
        case "redSlider":
            currentRed = CGFloat(sender.value)
            break
        case "greenSlider":
            currentGreen = CGFloat(sender.value)
            break
        case "blueSlider" :
            currentBlue = CGFloat(sender.value)
            break
        default:
            break
        }
        colorView.backgroundColor = UIColor(red: currentRed, green: currentGreen, blue: currentBlue, alpha: 1)
    }
    
    
    
    
    
    @IBAction func changeColorComponent() {
        
        
        
        let r: CGFloat = CGFloat(self.redControl.value)
        let g: CGFloat = CGFloat(self.greenControl.value)
        let b: CGFloat = CGFloat(self.blueControl.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}


