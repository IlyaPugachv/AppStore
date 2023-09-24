import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var lableOne: UILabel! { didSet { lableOne.text = IphoneData.shared.feedback }
    }
    
    @IBOutlet weak var lableTwo: UILabel! { didSet { lableTwo.text = Feedback.date.description }
    }
    
    @IBOutlet weak var labelthree: UILabel! { didSet { labelthree.text = IphoneData.shared.rating }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
