//
//  ContentView.swift
//  H4X0RNews
//
//  Created by user215496 on 9/25/22.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkManager = NetworkManager();
    
    var body: some View {
        NavigationView{
    //Pass results in network Manager to the List
            List(networkManager.news){
                post in
                HStack{
                    Text(String(post.points))
                    Text(post.title)}
            }
        .navigationTitle("Hacker News")
        .foregroundColor(.purple)
    }
        //Trigger func fetchData fromalgolia api when viewload
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
