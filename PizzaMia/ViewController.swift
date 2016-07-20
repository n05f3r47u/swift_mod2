//
//  ViewController.swift
//  PizzaMia
//
//  Created by Otto Lopez on 19/06/16.
//  Copyright © 2016 Otto Lopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var datoTamano = ["Chica","Mediana","Grande"]
    var tam : String = ""
        
    @IBOutlet weak var tamano: UIPickerView!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tamano.dataSource = self
        self.tamano.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datoTamano.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        tam = datoTamano[row]
        return datoTamano[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ViewMasa
        sigVista.tamano = tam
    }
}

