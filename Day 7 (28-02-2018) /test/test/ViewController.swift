//
//  ViewController.swift
//  test
//
//  Created by MacStudent on 2018-02-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var switchRemember: UISwitch!
    @IBAction func btnLogin(_ sender: UIButton)
    {
        if loginSuccess() {
            inventoryScreen()
        }
        else{
           
            let infoAlert = UIAlertController(title: "Incorrect Data", message: "Username and Password not match", preferredStyle: .alert)
            infoAlert.addAction(UIAlertAction(title: NSLocalizedString("Retry", comment: "Default action"), style: .destructive, handler: nil))
            self.present(infoAlert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func switchRememberAction(_ sender: UISwitch)
    {
        if self.switchRemember.isOn {
            let saveAlert = UIAlertController(title: "Saved", message: "Detail Saved", preferredStyle: .alert)
            
            saveAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Data Saved"), style: .default, handler: nil))
            
            
            self.present(saveAlert, animated: true, completion: nil)
        }
    }
    
    
    func loginSuccess() -> Bool{
        if (txtUsername.text == "test" && txtPassword.text == "test"){
            return true
        }
        else{
            return false
        }
    }
    
    
    func inventoryScreen() {
        let inventorySB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let inventoryVC = inventorySB.instantiateViewController(withIdentifier: "inventoryScreen")
        navigationController?.pushViewController(inventoryVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

