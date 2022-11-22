//
//  FriendDetailView.swift
//  Friendface
//
//  Created by Caroline Chan on 22/11/22.
//

import SwiftUI

struct FriendDetailView: View {
    let user: FriendFaceElement
    var body: some View {
        VStack {
            //MARK: Profile section
            ZStack(alignment: .leading) {
                Color.purple
                
                VStack(alignment: .leading) {
                    Text("Profile")
                        .font(.title2.weight(.bold))
                    
                    Spacer()
                    
                    Text("Name: \(user.name)")
                        .font(.headline)
                    Text("Age: \(user.age)")
                        .font(.headline)
                    Text("Company: \(user.company)")
                        .font(.headline)
                    Text("E-mail: \(user.email)")
                        .font(.headline)
                    Text("Address: \(user.address)")
                        .font(.headline)
                        .padding(.bottom)
                }
                .padding([.leading, .vertical])
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.white)
            }
            .frame(width: 360, height: 200)
            .cornerRadius(10)
            
            //MARK: About section
            ZStack(alignment: .leading) {
                Color.purple
                
                VStack(alignment: .leading) {
                    Text("About \(user.name)")
                        .font(.title2.weight(.bold))
                    
                    Spacer()
                    
                    Text(user.about)
                        .multilineTextAlignment(.leading)
                        .font(.footnote)
                }
                .padding()
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.white)
            }
            .frame(width: 360, height: 250)
            .cornerRadius(10)
            
            //MARK: Friends list section
            ZStack(alignment: .leading) {
                Color.purple
                
                HStack {
                    Text("Friends")
                        .font(.title2.weight(.bold))
                    
                    Spacer()
                    
                    HStack {
                        Text("\(user.friends.count)")
                            .font(.headline)
                        Image(systemName: "person.circle.fill")
                    }
                }
                .padding()
                .foregroundColor(.white)
            }
            .frame(width: 360, height: 50)
            .cornerRadius(10)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(user.friends) { friend in
                        ZStack(alignment: .leading) {
                            Color.purple
                                
                            Text(friend.name)
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.leading)
                        }
                        .frame(width: 150, height: 70)
                        .cornerRadius(10)
                    }
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.vertical)
        .navigationTitle(user.name)
    }
}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(user: FriendFaceElement(id: "1", isActive: true, name: "Ani Budiman", age: 30, company: "Imkan", email: "ani@mail.com", address: "907 Nelson Street, Cotopaxi, South Dakota, 5913", about: "Occaecat consequat elit aliquip magna laboris dolore laboris sunt officia adipisicing reprehenderit sunt. Do in proident consectetur labore. Laboris pariatur quis incididunt nostrud labore ad cillum veniam ipsum ullamco. Dolore laborum commodo veniam nisi. Eu ullamco cillum ex nostrud fugiat eu consequat enim cupidatat. Non incididunt fugiat cupidatat reprehenderit nostrud eiusmod eu sit minim do amet qui cupidatat.", registered: "2015-11-10T01:47:18-00:00", tags: [
            "cillum",
            "consequat",
            "deserunt",
            "nostrud",
            "eiusmod",
            "minim",
            "tempor"
        ], friends: [
            Friend(id: "1", name: "Budiyanto Hartawan"),
            Friend(id: "2", name: "Budiyanto A."),
            Friend(id: "3", name: "Budiyanto"),
            Friend(id: "4", name: "Budiyanto")
        ]))
    }
}
