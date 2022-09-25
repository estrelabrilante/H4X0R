//
//  ContentView.swift
//  H4X0RNews
//
//  Created by user215496 on 9/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        /*List {
        Text("Hi")
        Text("Hello,world!")
    }*/
            List(posts){
                //single item from array of posts is post
                post in
                Text(post.title)
                
            }
            
        .navigationTitle("Hacker News")
        .foregroundColor(.purple)
    }
    }
}
//Protocol called Identifiable : it must have id property which is a String
struct Post : Identifiable{
    let id: String
    let title: String
    
}
let posts = [Post(id:"1",title: "Hello"), Post(id: "2", title: "Bonjour"),Post(id: "3", title: "Namskram")]
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
