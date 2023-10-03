import Foundation

class IphoneData {
    
    static let shared = IphoneData()
    
    var iphone: [Iphone]
   
    // MARK: - Private init
    private init() {
        iphone = [
            Iphone(name: "iPhone 11", price: 429, image: .iPhone11),
            Iphone(name: "iPhone 12", price: 612, image: .iPhone12),
            Iphone(name: "iPhone 13", price: 746, image: .iPhone13),
            Iphone(name: "iPhone 14 Pro", price: 1060, image: .iPhone14Pro),
            Iphone(name: "iPhone 15 Pro", price: 1670, image: .iPhone15Pro)
        ]
    }
}
