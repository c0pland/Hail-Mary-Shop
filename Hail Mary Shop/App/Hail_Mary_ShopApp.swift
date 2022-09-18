//
//  Hail_Mary_ShopApp.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 15.09.22.
//

import SwiftUI

@main
struct Hail_Mary_ShopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(Shop())
        }
    }
}
