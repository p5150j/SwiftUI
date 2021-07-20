//
//  TabBar.swift
//  DesignCode
//
//  Created by Patrick Ortell on 7/16/21.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            ContentView().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("Cerifiascats")
            }
            
            PostList().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("last")
            }
        
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
