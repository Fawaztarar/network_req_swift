//
//  NetworkManager.swift
//  NetworkingApp
//
//  Created by Fawaz Tarar on 15/02/2024.
//

import Foundation

class NetworkManager {
    func fetchPosts(completion: @escaping ([Post]) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }

        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else { return }

            if let posts = try? JSONDecoder().decode([Post].self, from: data) {
                DispatchQueue.main.async {
                    completion(posts)
                }
            }
        }.resume()
    }
}
