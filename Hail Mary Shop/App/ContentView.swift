//
//  ContentView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 15.09.22.
//

import SwiftUI

struct ContentView: View {
	// MARK: properties
	
	// MARK: body

    var body: some View {
		ZStack {
			VStack {
				NavigationBarView()
					.padding(.horizontal, 15)
					.padding(.bottom)
					.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
					.background(Color.white)
					.shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
				VStack(spacing: 0) {
					Spacer()
					FooterView()
						.padding(.horizontal)
				}
				.background(colorBackground.ignoresSafeArea(.all, edges: .all))
			}
			.padding()
		}
		.ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
