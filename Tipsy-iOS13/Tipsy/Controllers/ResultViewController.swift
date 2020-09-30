//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Vijay Vikram Singh on 30/09/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var resultLabel: String?
    var adviceLabel: String?
    
    @IBOutlet weak var calculatedValue: UILabel!
    @IBOutlet weak var detailedAdvice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculatedValue.text = resultLabel
        detailedAdvice.text = adviceLabel
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    

   

}
