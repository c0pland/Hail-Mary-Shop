//
//  CodeableBundleExtension.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 16.09.22.
//

import Foundation

extension Bundle {
	func decode<T: Codable>(_ file: String) -> T {
		// Locate the json file
		guard let url = self.url(forResource: file, withExtension: nil) else {
			fatalError("Failed to locate \(file) in bundle")
		}
		// Create a property for data
		guard let data = try? Data(contentsOf: url) else {
			fatalError("Failed to load \(file) from bundle")
		}
		// Create a decoder
		let decoder = JSONDecoder()
		// Create a property for decoded data
		guard let decodedData = try? decoder.decode(T.self, from: data) else {
			fatalError("Failed to decode \(file) from bundle")
		}
		// Return data
		return decodedData
	}
}
