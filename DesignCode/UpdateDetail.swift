//
//  UpdateDetail.swift
//  SwiftUIFirstApp
//
//  Created by Noura Abdualaziz on 09/05/2020.
//  Copyright © 2020 Noura Abdualaziz. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var update: Update = updateData[1]
    var body: some View {
        List {
            VStack(spacing: 20) {
                
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    
                
                Text(update.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
            
            }
//            .navigationBarTitle(update.title)
        }
        .navigationBarTitle(update.title)
        .listStyle(PlainListStyle())
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
