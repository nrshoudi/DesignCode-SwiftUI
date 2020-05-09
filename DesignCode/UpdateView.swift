//
//  UpdateView.swift
//  SwiftUIFirstApp
//
//  Created by Noura Abdualaziz on 09/05/2020.
//  Copyright © 2020 Noura Abdualaziz. All rights reserved.
//

import SwiftUI

struct UpdateView: View {
    @ObservedObject var store = UpdateStore()
    
    func updateDate() {
        store.updates.append(Update(title: "SwiftUI", image: "Card1", text: "SwiftUI", date: "Jan 1"))
    }
    var body: some View {
        NavigationView {
            List {
                ForEach(store.updates) { update in
                    NavigationLink(destination: UpdateDetail(update: update)) {
                        HStack {
                            Image(update.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                                .background(Color.black)
                                .cornerRadius(20)
                                .padding(.trailing, 4)
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                Text(update.title)
                                    .font(.system(size: 20, weight: .bold))
                                
                                Text(update.text)
                                    .lineLimit(2)
                                    .font(.subheadline)
                                    .foregroundColor(Color.gray)
                                
                                Text(update.date)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding(.vertical, 8)
                    }
                
                }
                .onDelete { index in
                    self.store.updates.remove(at: index.first!)
                }
                .onMove { (source: IndexSet, destination: Int) in
                    self.store.updates.move(fromOffsets: source, toOffset: destination)
                }
            }
            .navigationBarTitle(Text("Updates"))
            .navigationBarItems(leading: Button(action: updateDate) {
                    Text("Update")
            }, trailing: EditButton())
        }
    }
}

struct UpdateView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateView()
    }
}

struct Update: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var text: String
    var date: String
}

let updateData = [
    Update(title: "SwiftUI Advanced", image: "Card1", text: "Take your SwiftUI app to the App Store with advanced techniques like API data, packages and CMS.", date: "JAN 1"),
        Update(title: "Webflow", image: "Card2", text: "Design and animate a high converting landing page with advanced interactions, payments and CMS", date: "OCT 17"),
        Update(title: "ProtoPie", image: "Card3", text: "Quickly prototype advanced animations and interactions for mobile and Web.", date: "AUG 27"),
        Update(title: "SwiftUI" , image: "Card4", text: "Learn how to code custom UIs, animations, gestures and components in Xcode 11", date: "JUNE 26"),
        Update(title: "Framer Playground", image: "Card5", text: "Create powerful animations and interactions with the Framer X code editor", date: "JUN 11")
]
