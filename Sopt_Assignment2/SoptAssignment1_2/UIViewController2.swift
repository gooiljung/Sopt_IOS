//
//  UIViewController2.swift
//  SoptAssignment1_2
//
//  Created by 정보영 on 2018. 4. 5..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class UIViewController2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return partArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return partArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
        partOfRow = row
        
//        partText.text = partArray[row]
        
        
    }
    func showPartPicker(){
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donePartButton))
        toolbar.setItems([spaceButton,doneButton], animated: false)
        
        partText.inputAccessoryView = toolbar
        partPicker.delegate = self
        partPicker.dataSource = self
        
        partText.textAlignment = .center
        partText.placeholder = "Select Part"
        partText.inputView = partPicker
       
        
    }
    var partOfRow: Int!
    @objc func donePartButton(){
        if let temp = partOfRow {
            partText.text = partArray[temp]
            filledUpChecked(partText)
        }
        self.view.endEditing(true)
    }
   
    
    var man:Bool = false
    var woman:Bool = false
    var tempSex:Bool = false
    var countForToggle = 0
    
    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthText: UITextField!
    @IBOutlet weak var partText: UITextField!
    
    let partArray = ["기획","디자인","웹","ios","안드로이드","서버"]
    let partPicker = UIPickerView()
    
    
    @IBOutlet weak var statusChanged: UIButton!
    
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        showDatePicker()
       
        showPartPicker()
        statusChanged.isEnabled = false
        checktyping()
        
        
        
    }
    
    
    func showDatePicker(){
        //Formate Date
        datePicker.datePickerMode = .date
        
        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));
        
        toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)
        
        birthText.inputAccessoryView = toolbar
        birthText.inputView = datePicker
        
        
    }
    
    
    @objc func donedatePicker(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        birthText.text = formatter.string(from: datePicker.date)
        filledUpChecked(birthText)
        
        self.view.endEditing(true)
    }
    
     @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
    
    func createUser() -> personalInformation {
        
        
        let tempUser = personalInformation(id: idText.text!, password: passText.text!, name: nameText.text!
            , birth: birthText.text!, part: partText.text!, checkSex: tempSex)
    
        return tempUser
        
    }
    
    @IBAction func createUserButton(_ sender: UIButton) {
      
      
        mem.updateValue(createUser(), forKey: idText.text!)
        whoseId = idText.text!
            
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "thirdView")
        present(nextView, animated: true, completion: nil)
            
       
        
        
        
    
        
        
    }
    func checktyping (){
        idText.addTarget(self, action: #selector(filledUpChecked(_:)), for: .editingChanged)
        passText.addTarget(self, action: #selector(filledUpChecked(_:)), for: .editingChanged)
        nameText.addTarget(self, action: #selector(filledUpChecked(_:)), for: .editingChanged)
        birthText.addTarget(self, action: #selector(filledUpChecked(_:)), for: .editingChanged)
        partText.addTarget(self, action: #selector(filledUpChecked(_:)), for: .editingChanged)
        womanButton.addTarget(self, action: #selector(filledUpChecked(_:)), for: .editingChanged)
        manButton.addTarget(self, action: #selector(filledUpChecked(_:)), for: .editingChanged)
    }

    @objc func filledUpChecked(_ sender: UITextField){
        if  idText.text == "" || passText.text == "" || nameText.text == "" || birthText.text == "" || partText.text == "" || (womanButton.currentImage == UIImage(named: "Woman") && (manButton.currentImage == UIImage(named: "Man"))){
            
            statusChanged.isEnabled = false
            
        }else {
            statusChanged.isEnabled = true
            statusChanged.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
            
            
        }
        
    
    }
   
    
    @IBOutlet weak var womanButton: UIButton!
    @IBOutlet weak var manButton: UIButton!
    

    


    @IBAction func sexSelected(sender: AnyObject) {
    
        guard let button = sender as? UIButton else {
            return
        }
    
        switch button.tag {
        case 1:
            manButton.setImage(UIImage(named: "selectedMan"), for: UIControlState.normal)
            womanButton.setImage(UIImage(named: "Woman"), for: UIControlState.normal)
            tempSex = false
            
        case 2:
            womanButton.setImage(UIImage(named: "selctedWoman"), for: UIControlState.normal)
            manButton.setImage(UIImage(named: "Man"), for: UIControlState.normal)
            tempSex = true
        
        default:
            break
        }
        filledUpChecked(partText)
    }
    
    
    
    
    
    
}




