//
//  IngredientesInterfaceController.swift
//  pizzaWatch
//
//  Created by Oscar Zarco on 26/08/16.
//  Copyright © 2016 oscarzarco. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {
    var tam : String = ""
    var mas : String = ""
    var que : String = ""
    var Ingredientes : String = ""
    var jam : Bool = false
    var pep : Bool = false
    var pav : Bool = false
    var sal : Bool = false
    var ace : Bool = false
    
    @IBOutlet var jamonSw: WKInterfaceSwitch!
    @IBOutlet var peperoniSw: WKInterfaceSwitch!
    @IBOutlet var pavoSw: WKInterfaceSwitch!
    @IBOutlet var salchichaSw: WKInterfaceSwitch!
    @IBOutlet var aceitunaSw: WKInterfaceSwitch!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let p = context as! pizza
        tam = p.tamano
        mas = p.masa
        que = p.queso
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func jamonSW(value: Bool) {
        jam = value
    }
    @IBAction func peperonoSw(value: Bool) {
        pep = value
    }
    @IBAction func pavoSW(value: Bool) {
        pav = value
    }
    @IBAction func salchichaSw(value: Bool) {
        sal = value
    }
    @IBAction func aceitunaSw(value: Bool) {
        ace = value
    }
    
    
    @IBAction func siguiente() {
        Ingredientes = ""
        if jam == true {
            Ingredientes = " Jamon"
        }
        if pep == true{
            Ingredientes = Ingredientes + " Peperoni"
        }
        if pav == true {
            Ingredientes = Ingredientes + " Pavo"
        }
        if sal == true {
            Ingredientes = Ingredientes + " Salchicha"
        }
        if ace == true {
            Ingredientes = Ingredientes + " Aceitunas"
        }
        let valorContexto = pizza(t: tam, m: mas , q: que, i: Ingredientes)
        pushControllerWithName("resultado", context: valorContexto)
    }
}
