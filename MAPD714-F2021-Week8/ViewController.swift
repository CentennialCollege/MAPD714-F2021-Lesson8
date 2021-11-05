import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
    
    @IBOutlet var tableView:UITableView!
    let movies =
    [
        ["Name": "Dune", "Genre": "Sci-Fi"] ,
        ["Name": "Shang Chi", "Genre": "Superhero"],
        ["Name": "Star Wars", "Genre": "Sci-Fi"],
        ["Name": "Blade Runner", "Genre": "Sci-Fi"],
        ["Name": "Spiderman", "Genre": "Superhero"],
        ["Name": "The Avengers", "Genre": "Superhero"],
        ["Name": "Back to the Future", "Genre": "Sci-Fi"]
    ]
    
    let tableIdentifier = "moviesTable"

    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: tableIdentifier)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // Step 1 - Instantiate an object of type UITableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: tableIdentifier, for: indexPath) as! CustomTableViewCell
        
        let rowData = movies[indexPath.row]
        cell.name = rowData["Name"]!
        cell.genre = rowData["Genre"]!
        
        return cell
    }
}

