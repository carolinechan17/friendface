//
//  ContentView.swift
//  Friendface
//
//  Created by Caroline Chan on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var user = User()
    
    var body: some View {
        NavigationView {
            List(user.user) { user in
                NavigationLink(destination: FriendDetailView(user: user)) {
                    FriendCellView(name: user.name, isActive: user.isActive)
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .task {
                await user.getUser()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
