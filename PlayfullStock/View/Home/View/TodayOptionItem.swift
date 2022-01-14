//
//  TodayOptionItem.swift
//  PlayfullStock
//
//  Created by AbdelrahmanQasim on 1/13/22.
//

import SwiftUI

struct TodayOptionItem: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading,spacing: 4) {
                Text("Most Valuable Stocks 2020")
                    .font(.system(size: 18).bold())
                    .foregroundColor(.white)
                
                Text("This is how you set your foot for 2020 Stock market recession. What’s next...")
                    .font(.system(size: 14))
                    .foregroundColor(Color(hex: "#B2B2B2"))
                
            }
            .padding(.top, 20)
            Spacer()
            
            ZStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
            }
            .frame(width: 50, height: 50)
            .background(
                Color.white
                    .cornerRadius(14)
            )
            
        }
    }
}
