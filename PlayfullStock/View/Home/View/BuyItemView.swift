//
//  BuyItemView.swift
//  PlayfullStock
//
//  Created by AbdelrahmanQasim on 1/13/22.
//

import SwiftUI

struct BuyItemView: View {
    var item: BuyItem
    
    var body: some View {
        VStack(alignment: .leading,spacing: 8) {
            Image(item.logo)
            Spacer()
            Text(item.title)
                .font(.system(size: 18).bold())
                .foregroundColor(.white)
            Text(item.price)
                .font(.system(size: 18).bold())
                .foregroundColor(.white)
        }
        .padding(.all, 20)
        .frame(width: 134,height: 170, alignment: .leading)
        .background(
            LinearGradient(colors: [
                Color(hex: item.colors[0]),
                Color(hex: item.colors[1])
            ], startPoint: .bottomLeading, endPoint: .topTrailing)
                .cornerRadius(30)
                .shadow(color: Color.black.opacity(0.01), radius: 30, x: -5, y: -5)
        )
    }
}
