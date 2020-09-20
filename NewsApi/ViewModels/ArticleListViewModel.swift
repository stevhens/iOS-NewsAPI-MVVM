//
//  ArticleListViewModel.swift
//  NewsApi
//
//  Created by Stevhen on 20/09/20.
//

import Foundation

class ArticleListViewModel: ObservableObject {
    
    @Published var articles = [ArticleViewModel]()
    
    func getArticleData() {
        
        Webservice().loadTopHeadlines { articleList in
            if let articleList = articleList {
                DispatchQueue.main.async {
                    self.articles = articleList.map(ArticleViewModel.init)
                }
            }
        }
        
    }
}
