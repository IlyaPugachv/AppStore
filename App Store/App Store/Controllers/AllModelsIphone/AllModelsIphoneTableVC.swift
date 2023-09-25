import UIKit

class AllModelsIphoneTableVC: UITableViewController {
    
    let cellManager = CellManager()
    
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
        // MARK: - Navigation

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard segue.identifier == "ShowMealDetail" else { return }
            guard let indexPath = tableView.indexPathForSelectedRow,
            let iphoneModelVC = segue.destination as? InfoIphoneModelVC else { return }
            iphoneModelVC.index = indexPath.row
        }
    
    @IBAction func unwindToMealsTVC(_ unwindSegue: UIStoryboardSegue) {
        tableView.reloadData()
    }
    
}

    

 

