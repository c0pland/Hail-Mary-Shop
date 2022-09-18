//
//  Shop.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 18.09.22.
//

import Foundation

class Shop: ObservableObject {
	@Published var showingproduct = false
	@Published var selectedProduct: Product? = nil
}
