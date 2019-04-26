//
//  ViewController.swift
//  creditManagement
//
//  Created by Vishwas on 25/04/19.
//  Copyright © 2019 apollo INC. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase


class ViewController: UIViewController, UITextFieldDelegate {
    var ref: DatabaseReference!
    
    @IBOutlet weak var hCredit: UILabel!
    @IBOutlet weak var hEmail: UILabel!
    @IBOutlet weak var hUser: UILabel!
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var creditAmount: UITextField!
    @IBOutlet weak var hiddenView: UIView!
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    @IBOutlet weak var buttonTen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.delegate = self
        creditAmount.delegate = self
       
        // Do any additional setup after loading the view, typically from a nib.
        ref = Database.database().reference()

        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            // Get user value
           
            var arr:[Int] = [1, 2, 3,4,5,6,7,8,9,10]
                for index in arr {
//                var user = "user"+String(index)
//                let email = snapshot.childSnapshot(forPath: user).childSnapshot(forPath: "email").value
//                let name = snapshot.childSnapshot(forPath: user).childSnapshot(forPath: "name").value
//                let credit = snapshot.childSnapshot(forPath: user).childSnapshot(forPath:"credit").value
//                print(email as! String)
//                print(name as! String)
//                print(credit)
                    if index == 1 {
                        var user = "user"+String(index)
                        let name = snapshot.childSnapshot(forPath: user).childSnapshot(forPath: "name").value
                        self.buttonOne.setTitle(name as! String, for: .normal)
    
                    }
                    if index == 2 {
                        var user = "user"+String(index)
                        let name = snapshot.childSnapshot(forPath: user).childSnapshot(forPath: "name").value
                        self.buttonTwo.setTitle(name as! String, for: .normal)
                        
                    }
                    
                    if index == 3 {
                        var user = "user"+String(index)
                        let name = snapshot.childSnapshot(forPath: user).childSnapshot(forPath: "name").value
                        self.buttonThree.setTitle(name as! String, for: .normal)
                        
                    }
                    if index == 4 {
                        var user = "user"+String(index)
                        let name = snapshot.childSnapshot(forPath: user).childSnapshot(forPath: "name").value
                        self.buttonFour.setTitle(name as! String, for: .normal)
                        
                    }
                    
                    if index == 5 {
                        var user = "user"+String(index)
                        let name = snapshot.childSnapshot(forPath: user).childSnapshot(forPath: "name").value
                        self.buttonFive.setTitle(name as! String, for: .normal)
                        
                    }
                    if index == 6 {
                        var user = "user"+String(index)
                        let name = snapshot.childSnapshot(forPath: user).childSnapshot(forPath: "name").value
                        self.buttonSix.setTitle(name as! String, for: .normal)
                        
                    }
                    if index == 7 {
                        var user = "user"+String(index)
                        let name = snapshot.childSnapshot(forPath: user).childSnapshot(forPath: "name").value
                        self.buttonSeven.setTitle(name as! String, for: .normal)
                        
                    }
                    if index == 8 {
                        var user = "user"+String(index)
                        let name = snapshot.childSnapshot(forPath: user).childSnapshot(forPath: "name").value
                        self.buttonEight.setTitle(name as! String, for: .normal)
                        
                    }
                    if index == 9 {
                        var user = "user"+String(index)
                        let name = snapshot.childSnapshot(forPath: user).childSnapshot(forPath: "name").value
                        self.buttonNine.setTitle(name as! String, for: .normal)
                        
                    }
                    if index == 10 {
                        var user = "user"+String(index)
                        let name = snapshot.childSnapshot(forPath: user).childSnapshot(forPath: "name").value
                        self.buttonTen.setTitle(name as! String, for: .normal)
                        
                    }
                
            }
        
            
            
            // ...
        }) { (error) in
            print(error.localizedDescription)
        }

    }
    
    
    @IBAction func buttonOne(_ sender: Any) {
       self.hiddenView.isHidden = false
        ref = Database.database().reference()
        
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
         let name = snapshot.childSnapshot(forPath: "user1").childSnapshot(forPath: "name").value
         let credit = snapshot.childSnapshot(forPath: "user1").childSnapshot(forPath: "credit").value
        let email = snapshot.childSnapshot(forPath: "user1").childSnapshot(forPath: "email").value
            self.hUser.text = name as! String
            self.hEmail.text = email as! String
            self.hCredit.text = credit as! String

            })
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        self.hiddenView.isHidden = false
        ref = Database.database().reference()
        
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            let name = snapshot.childSnapshot(forPath: "user2").childSnapshot(forPath: "name").value
            let credit = snapshot.childSnapshot(forPath: "user2").childSnapshot(forPath: "credit").value
            let email = snapshot.childSnapshot(forPath: "user2").childSnapshot(forPath: "email").value
            self.hUser.text = name as! String
            self.hEmail.text = email as! String
            self.hCredit.text = credit as! String
            
        })
    }
    
    @IBAction func buttonThree(_ sender: Any) {
        self.hiddenView.isHidden = false
        ref = Database.database().reference()
        
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            let name = snapshot.childSnapshot(forPath: "user3").childSnapshot(forPath: "name").value
            let credit = snapshot.childSnapshot(forPath: "user3").childSnapshot(forPath: "credit").value
            let email = snapshot.childSnapshot(forPath: "user3").childSnapshot(forPath: "email").value
            self.hUser.text = name as! String
            self.hEmail.text = email as! String
            self.hCredit.text = credit as! String
            
        })
    }
    
    @IBAction func buttonFour(_ sender: Any) {
        self.hiddenView.isHidden = false
        ref = Database.database().reference()
        
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            let name = snapshot.childSnapshot(forPath: "user4").childSnapshot(forPath: "name").value
            let credit = snapshot.childSnapshot(forPath: "user4").childSnapshot(forPath: "credit").value
            let email = snapshot.childSnapshot(forPath: "user4").childSnapshot(forPath: "email").value
            self.hUser.text = name as! String
            self.hEmail.text = email as! String
            self.hCredit.text = credit as! String
            
        })
        
    }
    @IBAction func buttonFive(_ sender: Any) {
        self.hiddenView.isHidden = false
        ref = Database.database().reference()
        
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            let name = snapshot.childSnapshot(forPath: "user5").childSnapshot(forPath: "name").value
            let credit = snapshot.childSnapshot(forPath: "user5").childSnapshot(forPath: "credit").value
            let email = snapshot.childSnapshot(forPath: "user5").childSnapshot(forPath: "email").value
            self.hUser.text = name as! String
            self.hEmail.text = email as! String
            self.hCredit.text = credit as! String
            
        })
        
    }
    @IBAction func buttonSix(_ sender: Any) {
        self.hiddenView.isHidden = false
        ref = Database.database().reference()
        
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            let name = snapshot.childSnapshot(forPath: "user6").childSnapshot(forPath: "name").value
            let credit = snapshot.childSnapshot(forPath: "user6").childSnapshot(forPath: "credit").value
            let email = snapshot.childSnapshot(forPath: "user6").childSnapshot(forPath: "email").value
            self.hUser.text = name as! String
            self.hEmail.text = email as! String
            self.hCredit.text = credit as! String
            
        })
        
    }
    @IBAction func buttonSeven(_ sender: Any) {
        self.hiddenView.isHidden = false
        ref = Database.database().reference()
        
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            let name = snapshot.childSnapshot(forPath: "user7").childSnapshot(forPath: "name").value
            let credit = snapshot.childSnapshot(forPath: "user7").childSnapshot(forPath: "credit").value
            let email = snapshot.childSnapshot(forPath: "user7").childSnapshot(forPath: "email").value
            self.hUser.text = name as! String
            self.hEmail.text = email as! String
            self.hCredit.text = credit as! String
            
        })
        
    }
    @IBAction func buttonEight(_ sender: Any) {
        self.hiddenView.isHidden = false
        ref = Database.database().reference()
        
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            let name = snapshot.childSnapshot(forPath: "user8").childSnapshot(forPath: "name").value
            let credit = snapshot.childSnapshot(forPath: "user8").childSnapshot(forPath: "credit").value
            let email = snapshot.childSnapshot(forPath: "user8").childSnapshot(forPath: "email").value
            self.hUser.text = name as! String
            self.hEmail.text = email as! String
            self.hCredit.text = credit as! String
            
        })
        
    }
    @IBAction func buttonNine(_ sender: Any) {
        self.hiddenView.isHidden = false
        ref = Database.database().reference()
        
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            let name = snapshot.childSnapshot(forPath: "user9").childSnapshot(forPath: "name").value
            let credit = snapshot.childSnapshot(forPath: "user9").childSnapshot(forPath: "credit").value
            let email = snapshot.childSnapshot(forPath: "user9").childSnapshot(forPath: "email").value
            self.hUser.text = name as! String
            self.hEmail.text = email as! String
            self.hCredit.text = credit as! String
            
        })
        
    }
    @IBAction func buttonTen(_ sender: Any) {
        self.hiddenView.isHidden = false
        ref = Database.database().reference()
        
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            let name = snapshot.childSnapshot(forPath: "user10").childSnapshot(forPath: "name").value
            let credit = snapshot.childSnapshot(forPath: "user10").childSnapshot(forPath: "credit").value
            let email = snapshot.childSnapshot(forPath: "user10").childSnapshot(forPath: "email").value
            self.hUser.text = name as! String
            self.hEmail.text = email as! String
            self.hCredit.text = credit as! String
            
        })
        
    }
    @IBAction func transfer(_ sender: Any) {
        var user = self.userName.text
        var credit = self.creditAmount.text
        let databaseRef = Database.database().reference()
        databaseRef.child(user!).updateChildValues(["credit": credit!])
        let messageVC = UIAlertController(title: "Transferred", message: "Amount Transferred Successfully" , preferredStyle: .actionSheet)
        present(messageVC, animated: true) {
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false, block: { (_) in
                messageVC.dismiss(animated: true, completion: nil)})}
        
    }
    @IBAction func close(_ sender: Any) {
        self.hiddenView.isHidden = true
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    /**
     * Called when the user click on the view (outside the UITextField).
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)    {
        self.view.endEditing(true)
    }
}

