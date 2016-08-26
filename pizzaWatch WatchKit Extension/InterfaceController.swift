//
//  InterfaceController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Oscar Zarco on 26/08/16.
//  Copyright © 2016 oscarzarco. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var tamanos = ["Ninguno","Chico","Mediano", "Grande"]
    var indice : Int = 0

    @IBOutlet var tamanoLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func selTamano(value: Float) {
        indice  = Int(value)
        tamanoLabel.setText(tamanos[indice])
    }
    
    @IBAction func siguiente() {
        print(tamanos[indice])
        var tam : String = ""
        if indice == 0 {
             tam = ""
        }
        else {
             tam = tamanos[indice]
        }
        let valorContexto = pizza(t: tam, m: "", q: "", i: "")
        pushControllerWithName("masa", context: valorContexto)
        
    }
}
