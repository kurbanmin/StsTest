import Foundation

class Move: Type {
    var fromPlace: String?
    var toPlace: String?
    var estimateTime: TimeInterval?
    
    var title: String {
        get {
            return "Move"
        }
    }
    
    var detail: String {
        get {
            var detail = ""
            if let toPlace = toPlace, let fromPlace = fromPlace {
                detail += "\(fromPlace) - \(toPlace)\n"
            }
            if let estimateTime = estimateTime {
                detail += "Estimate time: \(estimateTime)"
            }
            return detail
        }
    }
    
    var objectType: ObjectType {
        get {
            return .move
        }
    }
}
