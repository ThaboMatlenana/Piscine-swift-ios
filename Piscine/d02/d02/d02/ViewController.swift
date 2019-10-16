
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "newNoteSegue" {
            if segue.destination is NewNoteViewController {
                print("Add Started")
            }
        }
    }
    
    @IBAction func myUnwind(unwindSegue: UIStoryboardSegue) {
        print("Coming back")
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Notes.allNotes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell") as! DeathNoteTableViewCell
        cell.note = Notes.allNotes[indexPath.row]
        return cell
    }

}

