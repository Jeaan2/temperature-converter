//
//  Conversor.swift
//  TemperatureConverter
//
//  Created by Jean Carlo da Silva on 01/12/18.
//  Copyright © 2018 Jean Carlo da Silva. All rights reserved.
//

import Foundation

class Conversor
{
    static func c2f(valor: Float) -> Float {
        return (valor * (9/5)) + 32
    }
    
    static func f2c(valor : Float) -> Float {
        return (valor - 32) * 5/9
    }
}
