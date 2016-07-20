//
//  ViewMasa.swift
//  PizzaMia
//
//  Created by Otto Lopez on 21/06/16.
//  Copyright © 2016 Otto Lopez. All rights reserved.
//

import UIKit

class ViewMasa: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    var datoMasa = ["Delgada","Crujiente", "Gruesa"]
    var masa : String = ""
    var tamano : String = ""
    
    @IBOutlet weak var tipoMasa: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tipoMasa.dataSource = self
        self.tipoMasa.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ViewQueso
        sigVista.masa = masa
        sigVista.tamano = tamano
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datoMasa.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        masa = datoMasa[row]
        return datoMasa[row]
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
