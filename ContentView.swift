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
                newS in
                NavigationLink(destination: DetailView(url: newS.url)) {
        HStack{
            Text(String(newS.points))
            Text(newS.title)}
                    }
                }
                
        .navigationTitle("Hacker News")
        .foregroundColor(.purple)
    }
        //Trigger Networking(func fetchData) from algolia api when onappear method call
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
