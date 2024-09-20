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
            if cartManager.paymentSuccess{
                Text("Thanks for your purchase! You will get super cool car toy soon! You'll also recive an email confirmation shortly.")
                    .padding()
            }else{
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
                    PaymentButton(action: cartManager.pay)
                        .padding()
                    
                }else{
                    Text("Your cart is empty")
                }
            }
        }
        .navigationTitle("My Cart")
        .padding(.top)
        .onDisappear{
            if cartManager.paymentSuccess{
                cartManager.paymentSuccess = false
            }
        }
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
