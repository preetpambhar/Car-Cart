//
//  CartButton.swift
//  Car Toys
//
//  Created by Preet Pambhar on 2024-09-16.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(50)
            }
            
        }
    }
}

#Preview {
    CartButton(numberOfProducts: 1)
}
