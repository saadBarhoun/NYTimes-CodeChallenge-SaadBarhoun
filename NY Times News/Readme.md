NewsMvvm 

Saad Barhoun

First of all:
We'll be using the most viewed section of this API. Note: you need to signup for an API key at: https://developer.nytimes.com/get-started, then replace the ‘sample-key’ below with the API key assigned to your account.
    http://api.nytimes.com/svc/mostpopular/v2/mostviewed/emailed/7.json?api-key= sample-key
    
    After you obtain your full link to the json Data please replace my link with yours in 'NewListTableViewController' and click the run button
    
I wrote my code as follow:

- Setting up the User Interface:
    * Creating the UITableViewController with the 'NewListTableViewController'
    * added a navigationBar
    * color the navigation bar in the 'AppDelegate' file
    * Creating the UIViewController with the 'AbstractViewController'
    
- Implementing Web Services:
    * Creating the WebServices file to catche the API json data 
    * Decode json to Models

- Models:
    * Contains the article parameter from the json file (Article)
    * ArticleList: the array of articles

- Implementing ViewModels:
    * Create 'ArticleViewModel' Structer that is responsible for displaying "one particular" news article:
        - Contains the property that reffer to the official Model 'Article'
        - Contains the parameter of the json data from the model
    * Create 'ArticleListViewModel' Structer that is responsile for displaying the list of news articles

- Creating Custom self sizing cells: 
    * 'ArticleTableViewCell' indicates the cell that contains the data lables in the table view

- Displaying News:
    * Contains the property that reffer to the 'ArticleListViewModel': to grab the value of the models parameter from the viewModel
    * 'setup' function that grab the json data from the link using the 'WebServices' function and pass it to the ViewModel file to save the recommanding parameter in the models
    * specify the numberOfSections and the numberOfRowInSection to adjust the tableView
    * 'cellForRowAt' function:
        - adjust the cell to the 'ArticleTableViewCell' class 
        - specify the article from the ViewModel 'ArticleListViewModel' class using the index row
        - fill the labels text with article data grabed from the view model 'ArticleViewModel'
    * 'cellforRowAt' function that perform a segue to the other UI that display the abstract value of the chosen article in a label
    
 


