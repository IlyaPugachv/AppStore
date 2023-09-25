import UIKit

class LeaveAReviewVC: UIViewController {
    
    // MARK: - @IBOutlet
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var errorLbl: UILabel!
    @IBOutlet weak var segmentalControl: UISegmentedControl!
    @IBOutlet weak var saveButton: UIButton!
    
    var index: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
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
    
    func setupUI() {
        // MARK: - textView
        textView.delegate = self
        textView.backgroundColor = .gray
        textView.textColor = .black
        textView.backgroundColor = UIColor(white: 0.1, alpha: 0.1)
        textView.textColor = .black
    }
}

extension LeaveAReviewVC: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if textView == textView {
            let isCountEnough = textView.text.count > 10
            saveButton.isEnabled = isCountEnough
            errorLbl.isHidden = isCountEnough
        }
        return true
    }
}



