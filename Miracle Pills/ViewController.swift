//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Owen Duignan on 28/04/2017.
//  Copyright © 2017 Owen Duignan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // Create outlets to manipulate objects to be displayed
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTxtField: UITextField!
    @IBOutlet weak var zipLbl: UILabel!
    @IBOutlet weak var zipTxtField: UITextField!
    
    // Add the rest of the labels that need to be hidden when the buy now button is pressed
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var miraclePillText: UILabel!
    @IBOutlet weak var dollarAmt: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var fullNameText: UITextField!
    @IBOutlet weak var streetLbl: UILabel!
    @IBOutlet weak var streetText: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var buyButtonLabel: UIButton!
    @IBOutlet weak var successLbl: UIImageView!
    
    // Create an array with all the US states in same
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut",
                  "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa",
                  "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan",
                  "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire",
                  "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma",
                  "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee",
                  "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Add the required data soure and delegate objects
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        // Causes the State Picker to be displayed when state button is pressed
        statePicker.isHidden = false
        
        // Hide the Country and Zip Code details when state button is pressed
        countryLbl.isHidden = true
        countryTxtField.isHidden = true
        zipLbl.isHidden = true
        zipTxtField.isHidden = true
    }
    
    @IBAction func buyBtnPressed(_ sender: Any) {
        
        // Hide the Country and Zip Code details when state button is pressed
        countryLbl.isHidden = true
        countryTxtField.isHidden = true
        zipLbl.isHidden = true
        zipTxtField.isHidden = true
        
        // Hide the remaining buttons and labels
        pillImage.isHidden = true
        miraclePillText.isHidden = true
        dollarAmt.isHidden = true
        divider.isHidden = true
        fullNameLbl.isHidden = true
        fullNameText.isHidden = true
        streetLbl.isHidden = true
        streetText.isHidden = true
        cityLbl.isHidden = true
        cityText.isHidden = true
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        stateLbl.isHidden = true
        buyButtonLabel.isHidden = true
        successLbl.isHidden = false
    }

    
    // Returns 1 column
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Returns the total number of states in the array
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    // Returns the state name for a particular row
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    // Sets the title for the State Button to be the selected state
    func pickerView(_ pickerView: UIPickerView,
                    didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        
        // Hide the picker view
        statePicker.isHidden = true
        
        // Redisplay the Country and Zip objects
        countryLbl.isHidden = false
        countryTxtField.isHidden = false
        zipLbl.isHidden = false
        zipTxtField.isHidden = false
    }

}
