import UIKit

class LeaveAReviewVC: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var errorLbl: UILabel!
    @IBOutlet weak var segmentalControl: UISegmentedControl!
    @IBOutlet weak var saveButton: UIButton!
    
    var index: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        setupUI()
        textView.delegate = self
    }
    
    func showErrorLabelIfNeeded(textView: UITextView, errorLabel: UILabel, minLength: Int) {
        guard let text = textView.text else {
            return
        }
        if text.count < minLength {
            errorLbl.isHidden = false
        } else {
            errorLbl.isHidden = true
        }
    }
    
    @IBAction func saveBtnAction(_ sender: UIButton) {
        
        let feedback = Feedback(text: textView.text, mark: Double(segmentalControl.selectedSegmentIndex + 1))
        IphoneData.shared.iphone[index].feedBacks.append(feedback)
    }
}
extension LeaveAReviewVC: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if textView == textView {
            let isCountEnough = textView.text.count > 20
            saveButton.isEnabled = isCountEnough
            errorLbl.isHidden = isCountEnough
        }
        return true
    }
}








//
//    private func setupUI() {
//        errorLbl.isHidden = true
//
//        textView.backgroundColor = .gray // нужно будет сменить цвет!
//    }
//}
