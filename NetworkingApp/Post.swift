//
//  Post.swift
//  NetworkingApp
//
//  Created by Fawaz Tarar on 15/02/2024.
//

import Foundation

struct Post: Identifiable, Decodable {
    let id: Int
    let title: String
    let body: String
}
