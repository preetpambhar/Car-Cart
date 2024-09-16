//
//  Product.swift
//  Car Toys
//
//  Created by Preet Pambhar on 2024-09-16.
//

import Foundation
struct Product: Identifiable{
 var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "car1", image: "car1", price: 59),
                   Product(name: "car2", image: "car2", price: 99),
                   Product(name: "car3", image: "car3", price: 99),
                   Product(name: "car4", image: "car4", price: 69),
                   Product(name: "car5", image: "car5", price: 44),
                   Product(name: "car6", image: "car6", price: 39),
                   Product(name: "car7", image: "car7", price: 21),
                   Product(name: "car8", image: "car8", price: 49)]
