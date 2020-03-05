import UIKit

class TableViewController: UITableViewController {
    
    var jokes = ["Chicken", "Walk into a bar...","Olives","Racer"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jokes.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = jokes[indexPath.row]
        
    

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveToJokeDefinition", sender: jokes[indexPath.row])
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as? JokeDefinitionController{
            if let joke = sender as? String {
                jokeVC.joke = joke
            }
            
        }
    }
    
}
