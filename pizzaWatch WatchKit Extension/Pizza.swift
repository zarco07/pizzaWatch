//
//  Pizza.swift
//  pizzaWatch
//
//  Created by Oscar Zarco on 26/08/16.
//  Copyright © 2016 oscarzarco. All rights reserved.
//

import Foundation

class pizza {
    var tamano : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : String = ""
    
    init(t: String, m:String,  q:String, i : String){
        tamano = t
        masa = m
        queso = q
        ingredientes = i
    }
}
