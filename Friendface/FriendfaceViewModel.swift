//
//  FriendfaceViewModel.swift
//  Friendface
//
//  Created by Caroline Chan on 22/11/22.
//

import Foundation

@MainActor
class User: ObservableObject {
    @Published var user: FriendFace = []
    
    func getUser() async {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("URL doesn't exist")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)

            if let decodedResponse = try? JSONDecoder().decode([FriendFaceElement].self, from: data) {
                user = decodedResponse
            } else {
                //print(error.description)
            }
        } catch {
            print("Invalid data")
        }
    }
}
