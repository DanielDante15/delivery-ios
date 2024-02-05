//
//  StoresContainerView.swift
//  DanteDelivery
//
//  Created by Daniel Macedo on 01/01/24.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"
    @State private var ratingFilter = 0
    
    var filteredStore:[StoreType]{
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Text(title)
                    .font(.headline)
                Spacer()
                Menu("Filtrar"){
                    Button(action: {
                        ratingFilter = 0
                    }, label: {
                        Text("Limpar filtro")
                    })
                    Divider()
                    ForEach(1...5,id:\.self){rating in
                        Button(action: {
                            ratingFilter = rating
                        },
                               label: {
                            if(rating > 1){
                                Text("\(rating) estrelas ou mais")
                            }
                            else{
                                Text("\(rating) estrela ou mais")
                            }
                        })
                        
                    }
                }.foregroundStyle(.black)
            }
            
            VStack(alignment: .leading,spacing: 30){
                    
                if(filteredStore.isEmpty){
                    Text("Nenhum Resultado encontrado.")
                        .font(.title2)
                        .foregroundStyle(Color("ColorRed"))
                        .bold()
                        .padding(.vertical,32)
                        .frame(maxWidth: .infinity)
                }
                
                ForEach(filteredStore){mock in
                    NavigationLink {
                        StoreDetailView(store: mock)
                    } label: {
                        StoreItemView(store:mock)
                    }
                    
                }
            }.foregroundStyle(.black)
        }.padding(20)
    }
}

#Preview {
    StoresContainerView()
}
