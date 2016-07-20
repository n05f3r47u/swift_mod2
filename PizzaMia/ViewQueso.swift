//
//  ViewQueso.swift
//  PizzaMia
//
//  Created by Otto Lopez on 21/06/16.
//  Copyright © 2016 Otto Lopez. All rights reserved.
//

import UIKit

class ViewQueso: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let datoQueso = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    
    var masa : String = ""
    var tamano : String = ""
    var queso : String = ""
    
    @IBOutlet weak var tipoQueso: UIPickerView!
       
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tipoQueso.dataSource = self
        self.tipoQueso.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ViewIngrediente
        sigVista.tamano = tamano
        sigVista.masa = masa
        sigVista.queso = queso
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datoQueso.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        queso = datoQueso[row]
        return datoQueso[row]
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
