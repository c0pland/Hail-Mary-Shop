//
//  NavigationBarView.swift
//  Hail Mary Shop
//
//  Created by Богдан Беннер on 15.09.22.
//

import SwiftUI

struct NavigationBarView: View {
	@State private var isAnimated = false
	
    var body: some View {
		HStack {
			Button {
				
			} label: {
				Image(systemName: "magnifyingglass")
					.font(.title)
					.foregroundColor(.black)
			}
			Spacer()
			LogoView()
				.opacity(isAnimated ? 1 : 0)
				.offset(x: 0, y: isAnimated ? 0 : -25)
				.onAppear {
					withAnimation(.easeOut(duration: 0.5)) {
						isAnimated.toggle()
					}
				}
			Spacer()
			Button(action: {}) {
				ZStack {
					Image(systemName: "cart")
						.font(.title)
					.foregroundColor(.black)
					Circle()
						.fill(Color.red)
						.frame(width: 14, height: 14, alignment: .center)
						.offset(x: 13, y: -10)
				}
			}
		}
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
