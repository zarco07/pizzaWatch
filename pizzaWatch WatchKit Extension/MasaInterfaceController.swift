//
//  MasaInterfaceController.swift
//  pizzaWatch
//
//  Created by Oscar Zarco on 26/08/16.
//  Copyright © 2016 oscarzarco. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {

    var masas  = ["Ninguna","Delgada","Crujiente", "Gruesa"]
    var indice : Int = 0
    var tam : String = ""
    
    
    @IBOutlet var masaLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let p = context as! pizza
        tam = p.tamano
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func selMasa(value: Float) {
        indice  = Int(value)
        masaLabel.setText(masas[indice])
    }
    
    @IBAction func siguiente() {
        var masa : String = ""
        if indice == 0 {
            masa = ""
        }
        else {
            masa = masas[indice]
        }
        let valorContexto = pizza(t: tam, m: masa, q: "", i: "")
        pushControllerWithName("queso", context: valorContexto)
    }
}
