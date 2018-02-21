//
//  ViewController.swift
//  loginregister
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class loginvc: UIViewController {

    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnLogin(_ sender: UIButton)
    {
        let Email = txtEmail.text
        let Password = txtPassword.text
        
        if (Email == "test" && Password == "test")
        {
            let infoAlert = UIAlertController(title: "Login Successful", message: "You are authenticated", preferredStyle: .alert)
            
            infoAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(infoAlert, animated: true, completion: nil)
        }
       
        
        
        
    }
    
    
    
    
    @IBAction func btnBarRegistration(_ sender: Any)
    {
        let RegisterSB : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let registerVC = RegisterSB.instantiateViewController(withIdentifier: "RegistrationScreen")
        
      //  self.present(registerVC, animated: true, completion: nil)
        
         navigationController?.pushViewController(registerVC, animated: true)
    }
    
    
    @IBAction func btnBarLogin(_ sender: Any)
    {
        let Email = txtEmail.text
        let Password = txtPassword.text
        
        if (Email == "test" && Password == "test")
        {
            let infoAlert = UIAlertController(title: "Login Successful", message: "You are authenticated", preferredStyle: .alert)
            
            infoAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(infoAlert, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func btnRegister(_ sender: UIButton)
    {
        let RegisterSB : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let registerVC = RegisterSB.instantiateViewController(withIdentifier: "RegistrationScreen")
        
      //  self.present(registerVC, animated: true, completion: nil)
        
        navigationController?.pushViewController(registerVC, animated: true)
    }
    
    

}

