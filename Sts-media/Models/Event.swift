import Foundation

class Event: Type {
    var starTime: Date?
    var endTime: Date?
    var name: String!
    
    var title: String {
        get {
            return "Event"
        }
    }
    
    var detail: String {
        get {
            var detail = "name: \(name!)\n"
            if let starTime = starTime, let endTime = endTime {
                detail += "\(starTime) - \(endTime)"
            }
            return detail
        }
    }
    
    var objectType: ObjectType {
        get {
            return .event
        }
    }
}
