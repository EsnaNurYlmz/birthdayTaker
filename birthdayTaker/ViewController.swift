//
//  ViewController.swift
//  birthdayTaker
//
//  Created by Esna nur Yılmaz on 30.05.2023.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyName = UserDefaults.standard.object(forKey: "name")
        let storyBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storyName as? String{
            nameLabel.text = newName
        }
        
        if let newBirthday = storyBirthday as? String{
            birthdayLabel.text = newBirthday
            
        }
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name") //userdefault ile veriyi hafızaya kaydedilir.
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        nameLabel.text = "Name : \(nameTextField.text!)" //namelabel içine nametextfield daki veriyi yazdırması sağlandı.
        birthdayLabel.text = "Birthday : \(birthdayTextField.text!)"
    }
    
    
    @IBAction func DeleteClicked(_ sender: Any) {
        
        let storyName = UserDefaults.standard.object(forKey: "name") //hafızaya kaydettiğin veriyi silen  kod.
        let storyBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storyName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "name: "
        }
        
        if (storyBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "birthday: "
            
        }
        
    }
    
}
