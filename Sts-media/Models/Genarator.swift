import Foundation

class Genarator {
    func generateNotice() -> Notice {
        let gates = ["A11", "A9", "B1", "B5"]
        var notice = Notice()
        notice.flightDate = Date()
        notice.gate = gates.randomElement()
        
        return notice
    }
    
    func generateEvent() -> Event {
        let event = Event()
        event.starTime = Date()
        event.endTime = Date()
        event.name = "Flight"
        
        return event
    }
    
    func generateMove() -> Move {
        let places = ["Moscow", "Paris", "New-York", "London", "Berlin"]
        let move = Move()
        move.fromPlace = places.randomElement()
        move.toPlace = places.randomElement()
        move.estimateTime = 11
        
        return move
    }
    
    func generateData() -> [Type] {
        var array: [Type] = []
        let count = Int.random(in: 10...100)
        
        for _ in 0..<count {
            let random = Int.random(in: 0...2)
            switch random {
            case 0:
                array.append(generateNotice())
            case 1:
                array.append(generateEvent())
            case 2:
                array.append(generateMove())
            default:
                break
            }
        }
        
        return array
    }
}
