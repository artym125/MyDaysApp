//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Ostap Artym on 31.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    //@IBOutlet weak var resultButton: UIButton!
    
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //resultButton.layer.cornerRadius = 12
        
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    @IBAction func resultButtonTapped(_ sender: UIButton) {
        infoLabel.text = "Ви прожили \(numberOfDays)"
    }
    
}

