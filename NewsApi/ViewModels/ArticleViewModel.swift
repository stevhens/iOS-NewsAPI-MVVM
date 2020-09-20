//
//  ArticleViewModel.swift
//  NewsApi
//
//  Created by Stevhen on 20/09/20.
//

import Foundation

class ArticleViewModel {
    
    var article: Article
    
    init(article: Article) {
        self.article = article
    }
    
    let id: UUID = UUID()
    
    var title: String {
        return self.article.title
    }
    
    var desc: String {
        return self.article.description ?? ""
    }
}
