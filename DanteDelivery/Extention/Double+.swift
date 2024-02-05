//
//  Double+.swift
//  DanteDelivery
//
//  Created by Daniel Macedo on 08/01/24.
//

import Foundation

extension Double{
    func formatPrice()-> String{
        let formatedString = String(format: "%.2f", self)
        return formatedString.replacingOccurrences(of: ".", with: ",")
    }
}
