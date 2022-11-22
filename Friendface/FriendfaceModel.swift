//
//  FriendfaceModel.swift
//  Friendface
//
//  Created by Caroline Chan on 22/11/22.
//
// MARK: - Friendface
import Foundation

// MARK: - FriendFaceElement
struct FriendFaceElement: Codable, Identifiable {
    let id: String
    let isActive: Bool
    let name: String
    let age: Int
    let company, email, address, about: String
    let registered: String
    let tags: [String]
    let friends: [Friend]
}

// MARK: - Friend
struct Friend: Codable, Identifiable {
    let id, name: String
}

typealias FriendFace = [FriendFaceElement]
