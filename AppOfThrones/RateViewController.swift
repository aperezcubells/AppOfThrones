//
//  RateViewController.swift
//  AppOfThrones
//
//  Created by Sotronic on 13/11/22.
//

import UIKit

class RateViewController: UIViewController{

    @IBOutlet weak var rateLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.button.layer.cornerRadius = 4.0
        self.title = "Rate"
    }
    
    @IBAction func fire(_ sender: Any) {
        print("fire!! \(sender)")
        let valueInt = Int(slider.value)
        self.rateLabel.text = String(valueInt)
    }
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true)
    }
    @IBAction func accept(_ sender: Any) {
        
        print("Aceptando!! \(sender)")
        self.navigationController?.popViewController(animated: true)
    }
    
}
