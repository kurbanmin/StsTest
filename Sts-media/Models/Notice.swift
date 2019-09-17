import Foundation

struct Notice: Type {
    var flightDate: Date?
    var gate: String?
    
    var title: String {
        get {
            return "Notice"
        }
    }
    
    var detail: String {
        get {
            var detail = ""
            if let date = flightDate {
                detail += "Date: \(date)\n"
            }
            if let gate = gate {
                detail += "Gate: \(gate)"
            }
            return detail
        }
    }
    
    var objectType: ObjectType {
        get {
            return .notice
        }
    }
}
