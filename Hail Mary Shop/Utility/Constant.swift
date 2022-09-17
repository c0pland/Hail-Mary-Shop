//
//  Constant.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 15.09.22.
//

import SwiftUI

// Data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]
// color
let colorBackground = Color("ColorBackground")
// layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
	return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
// UX

// API

// Image

// font

//string

//misc
let notchSize = UIApplication.shared.windows.first?.safeAreaInsets.top
