import UIKit

class AllReviewsAboutIphones: UITableViewController {
    
    var index: Int!
    
    var iphone: Iphone {
        IphoneData.shared.iphone[index]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "ReviewTableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        iphone.feedBacks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let feedback = iphone.feedBacks[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewTableViewCell", for: indexPath) as! TableViewCell
        cell.lableOne.text = feedback.dateString
        cell.lableTwo.text = feedback.text
        cell.labelthree.text = feedback.ratingBar
        return cell
    }
}

