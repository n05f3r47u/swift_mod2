//
//  ViewPedido.swift
//  PizzaMia
//
//  Created by Otto Lopez on 22/06/16.
//  Copyright © 2016 Otto Lopez. All rights reserved.
//

import UIKit

class ViewPedido: UIViewController {

    var tamanoPasa : String = ""
    @IBOutlet weak var rTamano: UILabel!
    
    var masaPasa : String = ""
    @IBOutlet weak var rMasa: UILabel!
    
    var quesoPasa : String = ""
    @IBOutlet weak var rQueso: UILabel!
    
    @IBOutlet weak var rIngred1: UILabel!
    var ingred1Pasa : String = ""
    var ingred2Pasa : String = ""
    var ingred3Pasa : String = ""
    var ingred4Pasa : String = ""
    var ingred5Pasa : String = ""
    var unoPasa = 0

    @IBOutlet weak var btConfirma: UIButton!
    override func  viewWillAppear(animated: Bool) {
        rTamano.text = String(tamanoPasa)
        rMasa.text = String(masaPasa)
        rQueso.text = String(quesoPasa)
        
        if unoPasa == 1 {
        rIngred1.text = String(ingred1Pasa)+" "+String(ingred2Pasa)+" "+String(ingred3Pasa)+" "+String(ingred4Pasa)+" "+String(ingred5Pasa)
          btConfirma.hidden = false
        }else{
            rIngred1.text = "FALTA UN INGREDIENTE AL MENOS..!"
            btConfirma.hidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
