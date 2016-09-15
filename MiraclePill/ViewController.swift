//
//  ViewController.swift
//  MiraclePill
//
//  Created by Ivan Zhang on 9/10/16.
//  Copyright © 2016 zhangs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // Weak = Weak reference. Our super view owns a reference to this PickerView. In the code also keeps a reference here. If the screen is gone, then both the references are released.
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet var homeView: UIView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countruInput: UITextField!
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var zipcodeInput: UITextField!
    @IBOutlet weak var buynowButton: UIButton!
    
    @IBOutlet weak var sucessImage: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self // When changes happen to the state picker, look to this .swift
        statePicker.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateBtnPressed(sender: AnyObject) {
        statePicker.hidden = false
        countryLabel.hidden = true;
        countruInput.hidden = true;
        zipcodeInput.hidden = true;
        zipcodeLabel.hidden = true;
        buynowButton.hidden = true;
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], forState: UIControlState.Normal)
        statePicker.hidden = true
        countryLabel.hidden = false;
        countruInput.hidden = false;
        zipcodeInput.hidden = false;
        zipcodeLabel.hidden = false;
        buynowButton.hidden = false;
    }
    
    @IBAction func buynow(sender: UIButton) {
        sucessImage.hidden = false;
    }

}

