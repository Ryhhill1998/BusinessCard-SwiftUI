//
//  ContentView.swift
//  BusinessCard SwiftUI
//
//  Created by Ryan Henzell-Hill on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("ryan")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color("WhiteBlack"), lineWidth: 5)
                    )
                
                Text("Ryan Henzell-Hill")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                
                Text("Software Engineer")
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
                
                Divider()
                
                InfoView(text: "07437572172", icon: "phone.fill")
                
                InfoView(text: "ryan.henzell-hill@outlook.com", icon: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
