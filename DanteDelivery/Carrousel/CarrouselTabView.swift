//
//  CarrouselTabView.swift
//  DanteDelivery
//
//  Created by Daniel Macedo on 01/01/24.
//

import SwiftUI

struct CarrouselTabView: View {
    
    let ordersMock:[OrderType] = [
        OrderType(id: 1, name: "banner burguer", image: "barbecue-banner"),
        OrderType(id: 2, name: "banner prato feito", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "banner poke", image: "pokes-banner")

    ]
    
    var body: some View {
        TabView{
            ForEach(ordersMock){ mock in
                CarouselItemView(order: mock)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode:.always))
    }
}

#Preview {
    CarrouselTabView()
}
