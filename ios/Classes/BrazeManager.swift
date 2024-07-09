import Foundation
import BrazeKit

class BrazeManager {
    static let shared = BrazeManager()
    private var braze: Braze?
    
    private init() {}
    
    func configure(apiKey: String, endpoint: String) {
        let configuration = Braze.Configuration(apiKey: apiKey, endpoint: endpoint)
        braze = Braze(configuration: configuration)
    }
    
    func logCustomEvent(eventName: String, properties: [String: Any]?) {
        braze?.logCustomEvent(name: eventName, properties: properties)
    }
    
    func setUserID(userID: String) {
        braze?.changeUser(userId: userID)
    }
}