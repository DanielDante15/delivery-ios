//
//  NavigationBar.swift
//  DanteDelivery
//
//  Created by Daniel Macedo on 30/12/23.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            Spacer()
            Button("R.Vergueiro, 3185") {
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            Spacer()
            Button(action: {}){
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    NavigationBar()
        .previewLayout(.sizeThatFits).padding()
}
