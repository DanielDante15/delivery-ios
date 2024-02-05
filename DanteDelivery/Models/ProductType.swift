//
//  ProductType.swift
//  DanteDelivery
//
//  Created by Daniel Macedo on 02/01/24.
//

import Foundation

struct ProductType:Identifiable{
    let id:Int
    let name:String
    let description:String
    let image:String
    let price:Double
    
    var formatedPrice: String{
        return "R$" + price.formatPrice()
    }
}
