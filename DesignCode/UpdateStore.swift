//
//  UpdateStore.swift
//  DesignCode
//
//  Created by Patrick Ortell on 7/16/21.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
    
}
