import UIKit

class AllReviewsAboutIphones: UITableViewController {
    
    var index: Int!
        
    var iphone: Iphone {
        get {
            IphoneData.shared.iphone[index ?? 0]
        }
        set {
            IphoneData.shared.iphone[index ?? 0] = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "ReviewTableViewCell")
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { iphone.feedBacks.count }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let feedback = iphone.feedBacks[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewTableViewCell", for: indexPath) as! TableViewCell
        cell.lableOne.text = feedback.dateString
        cell.lableTwo.text = feedback.text
        cell.labelthree.text = feedback.ratingBar
        return cell
    }
        
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            iphone.feedBacks.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .none)
        }
    }
}
