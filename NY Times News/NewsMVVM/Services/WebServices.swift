//
//  WebServices.swift
//  NewsMVVM
//
//  Created by Saad barhoun on 11/11/2021.
//

import Foundation

class WebServices {
    
    func getArticles(url: URL , completion: @escaping ([Result]?) -> () ){
    
    URLSession.shared.dataTask(with: url){data, response , error in
        if let error = error {
            print(error.localizedDescription)
            completion(nil)
        }else if let data = data {
            let articleList =  try? JSONDecoder().decode(ArticlesList.self, from: data)
            if let articleList = articleList {
                completion(articleList.results)
            }
        }
    }.resume()
        
    }
}
