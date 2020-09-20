//
//  ContentView.swift
//  NewsApi
//
//  Created by Stevhen on 19/09/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var articleListVM = ArticleListViewModel()
    
    init() {
        self.articleListVM.getArticleData()
    }
    
    var body: some View {
        NavigationView {
            
            List(self.articleListVM.articles, id: \.id) { article in
                
                ArticleRowView(article: article)
            }
            
            .navigationBarTitle("News API Articles", displayMode: .large)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
