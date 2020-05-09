//
//  MenuView.swift
//  SwiftUIFirstApp
//
//  Created by Noura Abdualaziz on 05/05/2020.
//  Copyright © 2020 Noura Abdualaziz. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Nora - 28% completed")
                    .font(.caption)
                
                Color.white
                    .frame(width: 38.0, height: 6.0)
                    .cornerRadius(3)
                    .frame(width: 130.0, height: 6.0, alignment: .leading)
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.08))
                    .cornerRadius(3)
                    .padding()
                    .frame(width: 150, height: 25)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(12)
                
                MenuRow(title: "Account", icon: "gear")
                MenuRow(title: "Billing" , icon: "creditcard")
                 MenuRow(title: "Sign out", icon: "person.crop.circle")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color(#colorLiteral(red: 0.8900991082, green: 0.8902519345, blue: 0.8900894523, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal, 30)
        .overlay(
                Image("Avatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                .clipShape(Circle())
                    .offset(y: -150)
            
            )
        }
        .padding(.bottom, 30)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuRow: View {
    var title: String
    var icon: String
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.7333333333, blue: 0.831372549, alpha: 1)))
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}
