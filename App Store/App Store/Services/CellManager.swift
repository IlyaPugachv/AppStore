import UIKit

class CellManager {
    static func configure(_ cell: UITableViewCell, with iphone: Iphone ) {
        cell.textLabel?.text = iphone.name
        cell.detailTextLabel?.text = String(iphone.price) + " $\n" 
        cell.imageView?.image = iphone.image
    }
}
