import UIKit

struct Iphone {
    
    let name: String
    let price: Int
    let image: UIImage?
    
    var feedBacks: [Feedback] = []
    
    var ratingBar: String {
        if let rating = rating {
            return String(repeating: "⭐️", count: Int(rating.rounded(.up))) // control + command + " "
        } else {
            return "There are no reviews yet"
        }
    }
    
    private var rating: Double? {
        if feedBacks.isEmpty {
            return nil
        } else {
            var sum: Double = 0
            for rewiev in feedBacks {
                sum += rewiev.mark
            }
            return sum / Double(feedBacks.count)
        }
    }
}
