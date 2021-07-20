//
//  DataStore.swift
//  DesignCode
//
//  Created by Patrick Ortell on 7/20/21.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    init() {
        getPosts()
    }
    
    func getPosts() {
        Api().getPosts {(posts) in
            self.posts = posts
        }
    }
}
