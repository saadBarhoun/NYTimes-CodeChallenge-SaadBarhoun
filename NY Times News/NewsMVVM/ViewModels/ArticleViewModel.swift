
import Foundation

enum ArticleViewModels {
    
    struct ArticleListViewModel {
        let articles : [Result]
        
        var numberOfSection: Int{
            return 1
        }
        
        func numberOfRowsInSection(_ section: Int) -> Int {
            return self.articles.count
        }
        
        func articleAtIndex(_ index: Int) -> ArticleViewModel {
            let article = self.articles[index]
            return ArticleViewModel(article)
        }
    }

struct ArticleViewModel {
    private let article : Result
    
    init(_ article: Result) {
        self.article = article
    }
    
    var title: String {
       return self.article.title
    }
    
    var published_date: String{
        return self.article.published_date
    }

    var byLine: String{
        return self.article.byline
    }
    
    var abstract: String{
        return self.article.abstract
    }
}
    
}

