import UIKit

class InfoIphoneModelVC: UIViewController {
    
    var index: Int!
    
    var iphone: Iphone {
        IphoneData.shared.iphone[index]
    }
    
    @IBOutlet weak var imageStackView: UIStackView!
    @IBOutlet weak var imageVIew: UIImageView!
    @IBOutlet weak var nameIphoneLbl: UILabel!
    @IBOutlet weak var priceOnIphoneLbl: UILabel!
    @IBOutlet weak var iphoneReviewLbl: UILabel!
    @IBOutlet weak var feedBackButton: UIButton!
    @IBOutlet weak var leaveReviewAndRatingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(with: view.bounds.size)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        updateUI(with: size)
    }
    
    private func updateUI(with size: CGSize) {
        let isVertival = size.width < size.height
        imageStackView.axis = isVertival ? .vertical : .horizontal
        title = iphone.name
        imageVIew.image = iphone.image
        nameIphoneLbl.text = iphone.name
        priceOnIphoneLbl.text = iphone.ratingBar
        iphoneReviewLbl.text = iphone.price.description + " $"
        feedBackButton.setTitle("Посмотреть (\(iphone.feedBacks.count)) отзывов", for: .normal)
        feedBackButton.isEnabled = iphone.feedBacks.count != 0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? LeaveAReviewVC {
            dest.index = index
        }
        if let dest = segue.destination as? AllReviewsAboutIphones {
            dest.index = index
        }
    }
}
