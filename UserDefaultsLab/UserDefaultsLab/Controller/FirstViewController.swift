//
//  FirstViewController.swift
//  UserDefaultsLab
//
//  Created by Eric Widjaja on 9/24/19.
//  Copyright © 2019 Eric Widjaja. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    //MARK: - Properties:
    let userInput = UserDefaults.standard
    
    var userName = "" {
        didSet {
            userInput.set(userName, forKey: "userName")}
    }
    
    var birthDay: [String] = [] {
        didSet {
            userInput.set(birthDay, forKey: "birthDay")}
    }
    
    var birthDate: Date = Date() {
        didSet {
            userInput.set(birthDate, forKey: "birthDate")}
    }
    
    //MARK: - IBOutlets
    @IBOutlet weak var userBirthdate: UIDatePicker!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    //MARK: - IBAction

    @IBAction func seeMyHoroscope(_ sender: UIButton) {
//        getBirthDateFromDatePicker()
//        getUserName()
//        getUserZodiac()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Methods
    private func getUserName() {
        
        
    }
    


}
extension FirstViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text, let textRange = Range(range, in: text) {
            let updatedText = text.replacingCharacters(in: textRange, with: string)
            userName = updatedText
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        return true
    }
}

