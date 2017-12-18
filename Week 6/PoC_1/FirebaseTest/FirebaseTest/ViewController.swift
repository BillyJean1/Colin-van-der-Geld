//
//  ViewController.swift
//  FirebaseTest
//
//  Created by Colin van der Geld on 18-12-17.
//  Copyright © 2017 Colin van der Geld. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {
    var ref: DatabaseReference!
    
    @IBOutlet weak var usernameOne: UILabel!
    
    override func viewDidLoad() {
        ref = Database.database().reference()
        super.viewDidLoad()
    }

    @IBAction func addUser(_ sender: UIButton) {
        self.ref.child("users").child("1").setValue(["username": "Colin123"])
    }
    
    
    @IBAction func getRecords(_ sender: UIButton) {
        ref.child("users").child("1").observe(DataEventType.value, with: { (snapshot) in
            // Get user value
            
            let value = snapshot.value as? NSDictionary
            let username = value?["username"] as? String ?? ""
            
            self.usernameOne.text = username
            // ...
        }) { (error) in
            print(error.localizedDescription)
        }
        
    }
    
    @IBAction func updateRecord(_ sender: UIButton) {
        let userRef = ref.child("users").child("1")
        userRef.updateChildValues(["username": "nietColin"])
    }
    
    @IBAction func remove(_ sender: UIButton) {
        let userRef = ref.child("users").child("1")
        userRef.removeValue()so
    }
    
    
}

