import UIKit

class AllModelsIphoneTableVC: UITableViewController {
    
    var iphone: [Iphone] {
        IphoneData.shared.iphone
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        iphone.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let iphone = iphone[indexPath.row]
        CellManager.configure(cell, with: iphone)
        return cell
    }
}

