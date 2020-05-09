//
//  UpdateStore.swift
//  SwiftUIFirstApp
//
//  Created by Noura Abdualaziz on 09/05/2020.
//  Copyright © 2020 Noura Abdualaziz. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
