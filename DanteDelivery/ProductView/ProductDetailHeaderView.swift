//
//  ProductDetailHeaderView.swift
//  DanteDelivery
//
//  Created by Daniel Macedo on 05/02/24.
//

import SwiftUI

struct ProductDetailHeaderView: View {
    let product:ProductType
    var body: some View {
        VStack(alignment: .leading,spacing: 16){
            Image(product.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 20)
            
            Text(product.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding(.horizontal)
            
            Text(product.description)
                .padding(.horizontal)
            
            Text(product.formatedPrice)
                .font(.title3)
                .bold()
                .padding(.horizontal)
        }
    }
}

#Preview {
    ProductDetailHeaderView(product: storesMock[0].products[0])
}
