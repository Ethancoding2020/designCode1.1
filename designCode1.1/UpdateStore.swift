//
//  UpdateStore.swift
//  designCode1.1
//
//  Created by Ethan on 2020-11-22.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
