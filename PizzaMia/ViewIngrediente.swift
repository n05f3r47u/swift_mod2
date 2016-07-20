//
//  ViewIngrediente.swift
//  PizzaMia
//
//  Created by Otto Lopez on 21/06/16.
//  Copyright © 2016 Otto Lopez. All rights reserved.
//

import UIKit

class ViewIngrediente: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate{

    let datoIngred = ["Ninguno", "Jamón", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña", "Anchoa"]
    var masa : String = ""
    var tamano : String = ""
    var queso : String = ""
    var ingre1 : String = ""
    var ingre2 : String = ""
    var ingre3 : String = ""
    var ingre4 : String = ""
    var ingre5 : String = ""
    var uno = 0
    
    @IBOutlet weak var ingred1: UIPickerView!
    @IBOutlet weak var ingred2: UIPickerView!
    @IBOutlet weak var ingred3: UIPickerView!
    @IBOutlet weak var ingred4: UIPickerView!
    @IBOutlet weak var ingred5: UIPickerView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.ingred1.dataSource = self
        self.ingred1.delegate = self
        self.ingred2.dataSource = self
        self.ingred2.delegate = self
        self.ingred3.dataSource = self
        self.ingred3.delegate = self
        self.ingred4.dataSource = self
        self.ingred4.delegate = self
        self.ingred5.dataSource = self
        self.ingred5.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ViewPedido
        sigVista.tamanoPasa = tamano
        sigVista.masaPasa = masa
        sigVista.quesoPasa = queso
        sigVista.ingred1Pasa = ingre1
        sigVista.ingred2Pasa = ingre2
        sigVista.ingred3Pasa = ingre3
        sigVista.ingred4Pasa = ingre4
        sigVista.ingred5Pasa = ingre5
        sigVista.unoPasa = uno
  }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datoIngred.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == ingred1 {
            
            return datoIngred[row]
        } else if pickerView == ingred2 {
            
            return datoIngred[row]
        } else if pickerView == ingred3 {
            
            return datoIngred[row]
        } else if pickerView == ingred4 {
           
            return datoIngred[row]
        } else if pickerView == ingred5 {
            
            return datoIngred[row]
        }
        print(datoIngred[row])
        
    //return datoIngred[row]
        return nil
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if datoIngred[row] == "Ninguno" {
            if uno == 1 {
                uno = 1
            }
        }else{
            uno = 1
        }
     if pickerView == ingred1 {
     ingre1 = datoIngred[row]
     } else if pickerView == ingred2 {
     ingre2 = datoIngred[row]
     } else if pickerView == ingred3 {
     ingre3 = datoIngred[row]
     } else if pickerView == ingred4 {
     ingre4 = datoIngred[row]
     } else if pickerView == ingred5 {
     ingre5 = datoIngred[row]
     }
     //print(uno)
     
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
