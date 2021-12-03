//
//  NewListTableViewController.swift
//  NewsMVVM
//
//  Created by Saad barhoun on 11/11/2021.
//

import Foundation
import UIKit

class NewListTableViewCOntroller: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    var web = WebServices()
    private var articleListVM : ArticleViewModels.ArticleListViewModel!
    private func setup(){
      //  self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://api.nytimes.com/svc/mostpopular/v2/emailed/7.json?api-key=mEytDezhDVBdu74nxOwkX9foc5S8sSue")!
        web.getArticles(url: url){ articles in
            if let articles = articles {
                self.articleListVM = ArticleViewModels.ArticleListViewModel(articles: articles )
            }
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSection
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? ArticleTableViewCell else {
            fatalError()
        }
        
        
        let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
        
        cell.titleLabel.text = articleVM.title
        cell.descLabel.text = articleVM.byLine
        cell.dateLabel.text = articleVM.published_date
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToAsbtract", sender: self)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! AbstractViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
            destinationVC.abstract = articleVM.abstract
        }
    }
}

