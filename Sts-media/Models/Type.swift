import Foundation

enum ObjectType {
    case notice
    case event
    case move
}

protocol Type {
    var title: String { get }
    var detail : String { get }
    var objectType: ObjectType { get }
}
