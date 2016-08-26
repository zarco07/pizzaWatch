//
//  QuesoInterfaceController.swift
//  pizzaWatch
//
//  Created by Oscar Zarco on 26/08/16.
//  Copyright © 2016 oscarzarco. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {
    var quesos  = ["Ninguno","Mozarela","Cheddar", "Parmesano","Sin Queso"]
    var indice : Int = 0
    var tam : String = ""
    var mas : String = ""
    
    @IBOutlet var QuesoLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let p = context as! pizza
        tam = p.tamano
        mas = p.masa
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func selQueso(value: Float) {
        indice  = Int(value)
        QuesoLabel.setText(quesos[indice])
    }
    @IBAction func siguiente() {
        var queso : String = ""
        if indice == 0 {
            queso = ""
        }
        else {
            queso = quesos[indice]
        }
        let valorContexto = pizza(t: tam, m: mas , q: queso, i: "")
        pushControllerWithName("ingredientes", context: valorContexto)
    }
}
