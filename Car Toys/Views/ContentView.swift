//
//  ContentView.swift
//  Car Toys
//
//  Created by Preet Pambhar on 2024-09-16.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160),spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(productList, id: \.id){ product in
                            ProductCard(product: product)
                                .environmentObject(cartManager)
                        }
                    }
                .padding()
            }
            .navigationTitle(Text("Cars"))
            .toolbar{
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
           // .navigationBarItems(trailing: CartButton(numberOfProducts: 1))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}


