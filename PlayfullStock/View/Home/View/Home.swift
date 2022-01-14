//
//  Home.swift
//  PlayfullStock
//
//  Created by AbdelrahmanQasim on 1/13/22.
//

import SwiftUI

struct Home: View {
    @State var load: Bool = false
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 23) {
                Text("Home")
                    .font(.system(size: 32).bold())
                
                VStack(alignment: .leading,spacing: 8) {
                    Text("Your total asset portfolio")
                        .foregroundColor(.white)
                    
                    HStack(alignment: .bottom,spacing: 4) {
                        Text("$ 2.240.559")
                            .font(.system(size: 32).bold())
                            .foregroundColor(.white)
                        
                        Image("bxs-upvote")
                        
                        Text("+2%")
                            .font(.system(size: 11))
                            .foregroundColor(.white)
                    }
                }
                .padding(.all,30)
                .frame(maxWidth: .infinity,alignment: .leading)
                .background(
                    LinearGradient(colors: [
                        Color(hex: "#FF6BA1"),
                        Color(hex: "#FE5762")
                    ], startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(30)
                        .shadow(color: Color.black.opacity(0.1), radius: 30, x: -5, y: -5)
                        .shadow(color: Color.black.opacity(0.1), radius: 30, x: 5, y: 5)

                )
                
                HStack {
                    Text("What’s to Buy?")
                        .font(.system(size: 22).bold())
                    
                    Spacer()
                    
                    Text("See All →")
                        .font(.system(size: 18))
                        .foregroundColor(Color(hex: "#FE555D"))
                }
                .padding(.top, 17)
                
               
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 20) {
                        ForEach(buyItemList,id:\.id) { item in
                            BuyItemView(item: item)
                        }
                    }
                }.frame(maxHeight: 200, alignment: .leading)
                
                Spacer()
            }
            .frame(maxWidth: .infinity,maxHeight: getRect().height * 0.7,alignment: .leading)
            .padding(.horizontal,30)

            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Today’s Opinion")
                        .font(.system(size: 22).bold())
                        .foregroundColor(Color(hex: "#FF6BA1"))

                    VStack(spacing: 20) {
                        ForEach(buyItemList,id:\.id) { _ in
                            TodayOptionItem()
                        }
                    }
                    .frame(maxHeight: load ? nil : 0)
                    .opacity(load ? 1 : 0)
                    
                    Spacer()
                }
                .padding(.all,30)
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading)
                .background(
                    Color(hex: "#232C41")
                        .clipShape(CustomShape(corner: [.topLeft,.topRight], size: 30))
                        .ignoresSafeArea()
                )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading)
        .background(
            Color.white
                .edgesIgnoringSafeArea(.all)
        ).onAppear {
            withAnimation(Animation.spring().delay(0.45)) {
                load.toggle()
            }
        }
    }
}
