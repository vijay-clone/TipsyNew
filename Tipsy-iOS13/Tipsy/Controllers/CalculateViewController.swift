//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var calculateValue: UITextField!
    @IBOutlet weak var splitValue: UILabel!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
   
    var calModal = CalModel()
    var buttonTitle = "10%"
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pctButtonPressed(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        let buttonTitle = sender.currentTitle!
        let buttonTitlePct = String(buttonTitle.dropLast())
        calModal.calculateTip(tipValue: buttonTitlePct)
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitValue.text = String(format: "%0.0f", sender.value)
        calModal.numberOf(number: sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let value = calculateValue.text!
        calModal.calculateTotal(text: value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult"{
            
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultLabel = calModal.totalValue
            destinationVC.adviceLabel = "Split Between \(calModal.numberOfPeople) people, with \(buttonTitle) tip "
        }
 
       }
}
