//
//  ViewController.swift
//  Tally
//
//  Created by Kevin Bjornberg on 10/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var intervalControl: UISegmentedControl!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resetButtonPressed(_ sender: UIButton) {
        numberLabel.text = "0"
    }
    
    @IBAction func increaseButtonPressed(_ sender: UIButton) {
        var increment: Int = 1
        if let currentNumber = numberLabel.text, let currentValue = Int(currentNumber) {
            increment = intervalControl.selectedSegmentIndex + 1
            let newNumber = currentValue + increment
            numberLabel.text = "\(newNumber)"
        }
    }
}

