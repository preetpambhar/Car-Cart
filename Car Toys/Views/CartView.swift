//
//  CartView.swift
//  Car Toys
//
//  Created by Preet Pambhar on 2024-09-16.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0{
                ForEach(cartManager.products, id: \.id){product in
                    ProductRow(product: product)
                }
                
                HStack{
                    Text("You cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
            }else{
                Text("Your cart is empty")
            }
            
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
