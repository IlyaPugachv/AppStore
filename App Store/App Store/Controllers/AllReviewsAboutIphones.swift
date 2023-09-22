import UIKit

class AllReviewsAboutIphones: UITableViewController {
 
//    var persons = Person.randomPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        persons.count
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
        
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let person = persons[section]
//        return person.name + " " + person.surName
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
//        let person = persons[indexPath.row]
        cell.textLabel?.text = IphoneData.shared.feedback // это уже отрабатывает на сохранение отзыва
        cell.detailTextLabel?.text = IphoneData.shared.feedback // сюда доделаешь оценку в звездах
//        cell.detailTextLabel?.text = Iphone
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        30
//    }
    }

