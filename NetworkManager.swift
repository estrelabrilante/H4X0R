//
//  NetworkManager.swift
//  H4X0RNews
//
//  Created by user215496 on 9/25/22.
//

import Foundation
//ObservableObject: broadcast its property to one or many of interested parties
class NetworkManager: ObservableObject{
   @Published var news = [Post]()
    func fetchData (){
        //URL generated
if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page")
        {   //start a session
            let session = URLSession(configuration: .default)
            //dataTask
            let task = session.dataTask(with: url) { data, response, error in
                //no error case
                if error == nil{
                //data is in JSON format
                //decoder: decode JSON data into Results
                    if let safeData = data{
        let decoder = JSONDecoder();
                        do{
        //Data decoded
        let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                //Published property
                        self.news = results.hits                            }
    
                        }
                        catch{
                            print(error)
                        }
                    }
                }
            }
    task.resume();
        }
    }
}
