import Foundation

class IphoneData {
    
    static let shared = IphoneData()
    
    var iphone: [Iphone]
    var feedback: String?
    var rating: String?
    
    
    private init() {
                
        iphone = [
            Iphone(name: "iPhone 11", price: 700, image: .iPhone11),
            Iphone(name: "iPhone 12", price: 800, image: .iPhone12),
            Iphone(name: "iPhone 13", price: 900, image: .iPhone13),
            Iphone(name: "iPhone 14", price: 950, image: .iPhone14),
            Iphone(name: "iPhone 15", price: 999, image: .iPhone15)
//            Iphone(name: "iPhone 11", price: 700, image: .iPhone11, feedBacks: [Feedback])
        ]
    }
}
