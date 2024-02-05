//
//  StoreDetailView.swift
//  DanteDelivery
//
//  Created by Daniel Macedo on 02/01/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store:StoreType
    @Environment(\.dismiss) var dismiss
    @State private var selectedProduct:ProductType?
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(alignment: .leading){
                
                StoreDetailHeaderView(store: store)
                StoreDetailProductsView(products: store.products)
                
            }
            .navigationTitle(store.name)
            .navigationBarBackButtonHidden()
            .toolbar{
                ToolbarItem(placement:.topBarLeading){
                    Button(action: {
                        dismiss()
                    }, label: {
                        HStack(spacing:4){
                            Image(systemName: "cart")
                            Text("Lojas")
                        }
                        .foregroundStyle(.colorRed)
                    })
                }
            }
        }
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
