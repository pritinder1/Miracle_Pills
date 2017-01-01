//
//  ViewController.swift
//  Miracle_Pills
//
//  Created by Pritinder Singh  on 12/31/16.
//  Copyright © 2016 Pritinder Singh . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    
    @IBOutlet weak var sucessBtn: UIButton!
    @IBOutlet weak var Main_Content: UIStackView!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var buyNowBtn: UIButton!
    
    var states = ["Alabama",
                  "Alaska",
                  "Arizona",
                  "Arkansas",
                  "California",
                  "Colorado",
                  "Connecticut",
                  "Delaware",
                  "Florida",
                  "Georgia",
                  "Hawaii",
                  "Idaho",
                  "Illinois",
                  "Indiana",
                  "Iowa",
                  "Kansas",
                  "Kentucky",
                  "Louisiana",
                  "Maine",
                  "Maryland",
                  "Massachusetts",
                  "Michigan",
                  "Minnesota",
                  "Mississippi",
                  "Missouri",
                  "Montana",
                  "Nebraska",
                  "Nevada",
                  "New Hampshire",
                  "New Jersey",
                  "New Mexico",
                  "New York",
                  "North Carolina",
                  "North Dakota",
                  "Ohio",
                  "Oklahoma",
                  "Oregon",
                  "Pennsylvania",
                  "Rhode Island",
                  "South Carolina",
                  "South Dakota",
                  "Tennessee",
                  "Texas",
                  "Utah",
                  "Vermont",
                  "Virginia",
                  "Washington",
                  "West Virginia",
                  "Wisconsin",
                  "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func statePickerBtnTapped(_ sender: Any) {
        
        statePickerBtn.isHidden = true
        statePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.isHidden = false
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        
        
    }
    
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        
        Main_Content.isHidden = true
        buyNowBtn.isHidden = true
        sucessBtn.isHidden = false
    }

    @IBAction func successBtnPressed(_ sender: Any) {
        
        Main_Content.isHidden = false
        buyNowBtn.isHidden = false
        sucessBtn.isHidden = true 
    }
}

