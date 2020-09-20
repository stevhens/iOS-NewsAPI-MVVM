//
//  Article.swift
//  NewsApi
//
//  Created by Stevhen on 20/09/20.
//

import Foundation

struct NewsResponse: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String?
}
