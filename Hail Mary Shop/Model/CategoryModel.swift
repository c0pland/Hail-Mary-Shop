//
//  CategoryModel.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 17.09.22.
//

import Foundation

struct Category: Codable, Identifiable {
	let id: Int
	let name: String
	let image: String
}
