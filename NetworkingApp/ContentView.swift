//
//  ContentView.swift
//  NetworkingApp
//
//  Created by Fawaz Tarar on 15/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var posts: [Post] = []

    var body: some View {
        List(posts) { post in
            VStack(alignment: .leading) {
                Text(post.title).font(.headline)
                Text(post.body).font(.subheadline)
            }
        }
        .onAppear {
            NetworkManager().fetchPosts { fetchedPosts in
                self.posts = fetchedPosts
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

