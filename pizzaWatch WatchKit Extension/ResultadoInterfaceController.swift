//
//  ResultadoInterfaceController.swift
//  pizzaWatch
//
//  Created by Oscar Zarco on 26/08/16.
//  Copyright © 2016 oscarzarco. All rights reserved.
//

import WatchKit
import Foundation


class ResultadoInterfaceController: WKInterfaceController {
    var tam : String = ""
    var mas : String = ""
    var que : String = ""
    var ing : String = ""
    
    @IBOutlet var ResultadoLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let p = context as! pizza
        tam = p.tamano
        mas = p.masa
        que = p.queso
        ing = p.ingredientes
        
        
        ResultadoLabel.setText("Pizza: " + p.tamano + ", masa: " + p.masa + ", Tipo queso: " + p.queso + ", con: " + p.ingredientes)
        
        ResultadoLabel.sizeToFitHeight()
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func EnviarCocina() {
        let alto = WKAlertAction(title: "OK",style: WKAlertActionStyle.Default){ accion in
            print("Alto")
        }
        
        if tam == "" {
          presentAlertControllerWithTitle("Alto", message: "Falta indicar el tamaño", preferredStyle: WKAlertControllerStyle.Alert, actions: [alto])
        }
        else if mas == "" {
            presentAlertControllerWithTitle("Alto", message: "Falta indicar tipo de masa", preferredStyle: WKAlertControllerStyle.Alert, actions: [alto])
        }
        else if que == "" {
            presentAlertControllerWithTitle("Alto", message: "Falta indicar tipo de queso", preferredStyle: WKAlertControllerStyle.Alert, actions: [alto])
        }
        else if ing == "" {
            presentAlertControllerWithTitle("Alto", message: "Falta indicar al menos un ingrediente", preferredStyle: WKAlertControllerStyle.Alert, actions: [alto])
        }
        else {
            let enviar = WKAlertAction(title: "Enviar Cocina", style: WKAlertActionStyle.Default){ accion in
                print("Envia")
                //let valorContexto = pizza(t: "", m: "" , q: "", i: "")
                //self.pushControllerWithName("inicio", context: valorContexto)
                self.popToRootController()
            }
            let cancela = WKAlertAction(title: "Cancelar", style: WKAlertActionStyle.Cancel){ accion in
            print("Cancelar")
            }
        
            presentAlertControllerWithTitle("Confirmar Orden", message: "Su orden esta completa?", preferredStyle: WKAlertControllerStyle.Alert, actions: [enviar,cancela])
        }
    }
}
