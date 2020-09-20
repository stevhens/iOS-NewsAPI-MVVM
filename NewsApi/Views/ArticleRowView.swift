//
//  ArticleRowView.swift
//  NewsApi
//
//  Created by Stevhen on 20/09/20.
//

import SwiftUI

struct ArticleRowView: View {
    
    var article: ArticleViewModel
    
    var body: some View {
        HStack {
            VStack {
                
                Text(article.title)
                    .font(.custom("", size: 20))
                    .fontWeight(.bold)
                    .padding(.bottom, 3)
                    .lineLimit(0)
                    
                Text(article.desc)
                    .foregroundColor(.gray)
                    .lineLimit(2)
            }
            .padding(.bottom, 5)
        }
    }
}
