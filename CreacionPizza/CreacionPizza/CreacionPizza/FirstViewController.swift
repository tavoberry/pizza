//
//  FirstViewController.swift
//  CreacionPizza
//
//  Created by Gustavo Reyes on 06/02/16.
//  Copyright © 2016 Gustavo Reyes. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var tamaño: UIPickerView!
    var tamañoSeleccionado : String = ""
    let datos = ["Pequeña", "Mediana", "Grande"]
    
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
        return datos.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return datos[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tamañoSeleccionado = datos[row]
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let result = tamañoSeleccionado
        let sigVista = segue.destinationViewController as! SecondViewController
        //sigVista.selectedSize = result
        //print(tamañoSeleccionado)
    }


}

