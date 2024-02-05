//
//  CarouselItemView.swift
//  DanteDelivery
//
//  Created by Daniel Macedo on 01/01/24.
//

import SwiftUI

struct CarouselItemView: View {
    
    let order:OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    CarouselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner")).previewLayout(.sizeThatFits).padding()
}
