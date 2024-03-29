//
//  ProductDetailQuantity.swift
//  DanteDelivery
//
//  Created by Daniel Macedo on 05/02/24.
//

import SwiftUI

struct ProductDetailQuantity: View {
    @Binding var productQuantity:Int

    var body: some View {
        VStack(spacing:16){
            Text("Quantidade").bold().font(.title3)
            HStack{
                Button(action: {
                    if (productQuantity>1) {
                        productQuantity-=1
                    }
                }, label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                })
                Text("\(productQuantity)").font(.title2).bold()
                Button(action: {
                    productQuantity+=1
                }
                       , label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                })
            }
        }
    }
}

#Preview {
    ProductDetailQuantity(productQuantity: .constant(1))
}
