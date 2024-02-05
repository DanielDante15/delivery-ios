//
//  ContentView.swift
//  DanteDelivery
//
//  Created by Daniel Macedo on 30/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack{
               NavigationBar()
                    .padding(.horizontal,15)
                ScrollView(.vertical,showsIndicators:false){
                    VStack(spacing: 20){
                        OrderTypeGrid()
                        CarrouselTabView()
                        StoresContainerView()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView().previewLayout(.sizeThatFits)
}
