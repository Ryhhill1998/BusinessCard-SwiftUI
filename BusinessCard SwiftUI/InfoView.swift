//
//  InfoView.swift
//  BusinessCard SwiftUI
//
//  Created by Ryan Henzell-Hill on 24/06/2023.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let icon: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: nil, height: 50.0)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: icon)
                        .foregroundColor(Color(red: 0.09, green: 0.63, blue: 0.52))
                    Text(text)
                }
            )
        
            .padding(.all)
    }
}
