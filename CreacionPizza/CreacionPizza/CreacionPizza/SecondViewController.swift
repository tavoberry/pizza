//
//  SecondViewController.swift
//  CreacionPizza
//
//  Created by Gustavo Reyes on 06/02/16.
//  Copyright © 2016 Gustavo Reyes. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var tipoMasa: UIPickerView!
    let masa = ["Delgada", "Crujiente", "Gruesa"]
    var selectedMasa :String = ""
    var selectedSize :String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masa.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masa[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedMasa = masa[row]
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sizeS = selectedSize
        let masaS = selectedMasa
        let sigVista = segue.destinationViewController as! Queso
        sigVista.selectedSize = sizeS
        sigVista.selectedMasa = masaS
        print(sizeS)
        print(masaS)
    }

}

