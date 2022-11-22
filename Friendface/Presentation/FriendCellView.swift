//
//  FriendCellView.swift
//  Friendface
//
//  Created by Caroline Chan on 22/11/22.
//

import SwiftUI

struct FriendCellView: View {
    let name: String
    let isActive: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(name)
                .font(.title3.weight(.semibold))
            
            HStack {
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 10, height: 10)
                
                Text(isActive ? "Active" : "Inactive")
                    .fontWeight(.medium)
            }
            .foregroundColor(isActive ? .green : .red)
        }
    }
}

struct FriendCellView_Previews: PreviewProvider {
    static var previews: some View {
        FriendCellView(name: "Ani Budiman", isActive: true)
    }
}
