//
//  inventoryVC.swift
//  test
//
//  Created by MacStudent on 2018-02-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class inventoryVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblProductNumber: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var quanStepper: UIStepper!
    @IBOutlet weak var lblStepper: UILabel!
    @IBOutlet weak var txtRemark: UITextField!
    
    @IBOutlet weak var namePicker: UIPickerView!
    
    @IBOutlet weak var numberPicker: UIPickerView!
    
    var productsName: [String] = ["Canon","Nikon","Sony","Pentax"]
    var selectedProductsIndex: Int = 0
    
    var productsNumber: [String] = ["1","2","3","4"]
    var selectedProductsNumber: Int = 0
    
    var cameraImages: [UIImage] = [
        UIImage(named: "canon.jpeg")!,
        UIImage(named: "nikon.jpeg")!,
        UIImage(named: "pentax.jpeg")!,
        UIImage(named: "samsung.jpeg")!
    ]
   
    @IBAction func btnSave(_ sender: UIButton)
    {
        self.writePropertyList()
    }
    
    func writePropertyList(){
        let inventor = NSMutableDictionary()
        inventor["productNumber"] = self.lblProductNumber.text
        inventor["productName"] = self.lblProductName.text
      //  inventor["quantity"] = self.quanStepper.stepValue
        inventor["remark"] = self.txtRemark.text
      //  inventor["image"] = self.productImage.image 
        
        if let plistPath = Bundle.main.path(forResource: "inventory", ofType: "plist"){
            let inventorplist = NSMutableArray(contentsOfFile: plistPath)
            inventorplist?.add(inventor)
            if (inventorplist?.write(toFile: plistPath, atomically: true))!{
                print("inventorylist : \(String(describing: inventorplist))")
            }
            
        }else{
            print("Unable to locate plist file")
        }
    }
    
    @IBAction func btnList(_ sender: UIButton)
    {
        let listSB = UIStoryboard(name: "Main", bundle: nil)
        let listVC = listSB.instantiateViewController(withIdentifier: "inventoryTable ")
        self.navigationController?.pushViewController(listVC, animated: true)
    }
    @IBAction func quantityStepper(_ sender: UIStepper)
    {
        lblStepper.text = String(quanStepper.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.namePicker.delegate = self
        self.numberPicker.delegate = self
        self.namePicker.dataSource = self
        self.numberPicker.dataSource = self
        // Do any additional setup after loading the view.
    }


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows : Int = productsNumber.count
        if pickerView == namePicker {
            countrows = self.productsName.count
        }
        
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == numberPicker {
            let titleRow = productsNumber[row]
            return titleRow
        } else if pickerView == namePicker {
            let titleRow = productsName[row]
            return titleRow
        }
        
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == numberPicker {
            self.lblProductNumber.text = self.productsNumber[row]
        } else if pickerView == namePicker {
            self.lblProductName.text = self.productsName[row]
            
        }
    }
    
    
    
    /*
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.productsName.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.productsName[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblProductName.text = productsName[row]
    }
    
    
    func pickerView1(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.productsNumber.count
    }
    
    func pickerView1(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.productsNumber[row]
    }
    
    func pickerView1(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblProductNumber.text = productsName[row]
    }
    */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
