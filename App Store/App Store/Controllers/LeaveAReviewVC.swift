import UIKit

class LeaveAReviewVC: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var errorLbl: UILabel!
    @IBOutlet weak var segmentalControl: UISegmentedControl! // пока не нужна
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func textViewDidChange(_ textView: UITextView) {
        showErrorLabelIfNeeded(textView: textView, errorLabel: errorLbl, minLength: 50)
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
        IphoneData.shared.feedback = textView.text
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    private func setupUI() {
        errorLbl.isHidden = true
        textView.delegate = self
        textView.backgroundColor = .white // нужно будет сменить цвет!
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
