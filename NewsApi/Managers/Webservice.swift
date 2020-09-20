//
//  Webservices.swift
//  NewsApi
//
//  Created by Stevhen on 19/09/20.
//

import Foundation

class Webservice {
    
    func loadTopHeadlines(completion: @escaping ([Article]?) -> Void) {
        
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(K.apiKey)") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
                
            guard let data = data, error == nil else {
                return completion(nil)
            }
            
            let articleList = try? JSONDecoder().decode(NewsResponse.self, from: data)
            completion(articleList?.articles)
            
        }.resume()
        
    }
}
