
import UIKit

class DetailViewController: UITableViewController {

    let trackManager = TrackManager()
    
    var cell = UITableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return message.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        cell = tableView.dequeueReusableCell (withIdentifier: "TrackDetail", for: indexPath)
        cell.textLabel?.text = message[indexPath.row].msg
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(message[indexPath.row].msg)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

    @IBAction func searchButtonPressed(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "choose Country", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Search", style: .default) { (action) in
            print("Success")
            
            
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    
        
    }
    
   
}


struct Data {
    let msg : String
}
let message = [
Data(msg: "Hello"),Data(msg: "Hola"),Data(msg: "marhaba"),Data(msg: "Bonjour")
]
