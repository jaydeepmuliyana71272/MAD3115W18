//
//  ViewController.swift
//  design
//
//  Created by MacStudent on 2018-02-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBAction func btnOk(_ sender: UIButton)
    {
        var email = txtEmail.text!
                                                                                                                       lblName.text = email
        
        let infoAlert = UIAlertController(title: "Info", message: "This is your info", preferredStyle: .alert)  //actionsheet 
        
        infoAlert.addAction(UIAlertAction(title: "My Alert", style: .default, handler: nil))
        
        self.present(infoAlert, animated: true, completion: nil)
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

