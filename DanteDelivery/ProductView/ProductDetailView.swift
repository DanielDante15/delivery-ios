//
//  ProductDetailView.swift
//  DanteDelivery
//
//  Created by Daniel Macedo on 08/01/24.
//

import SwiftUI

struct ProductDetailView: View {
    @State var productQuantity = 1

    let product:ProductType
    var body: some View {
        VStack{
            ProductDetailHeaderView(product: product)
            Spacer()
            ProductDetailQuantity(productQuantity: $productQuantity)
            Spacer()
            ProductDetailButtonView()
        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}

struct ProductDetailButtonView: View {
    var body: some View {
        Button(action: {}, label: {
            HStack{
                Image(systemName: "cart")
                Text("Adicionar ao carrinho")
            }
            .padding(.horizontal,32)
            .padding(.vertical,16)
            .font(.title3)
            .bold()
            .background(Color("ColorRed"))
            .foregroundStyle(.white)
            .clipShape(.buttonBorder)
            .shadow(color: Color("ColorRedDark").opacity(0.5),radius: 10,x: 6,y: 8)
        })
    }
}
