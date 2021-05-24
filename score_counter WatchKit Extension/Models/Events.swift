import SwiftUI

class EventsModel: ObservableObject, Identifiable, Codable {
    @Published var events = [Event]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(events) {
                UserDefaults.standard.set(encoded, forKey: "events")
            }
        }
    }
    
    init() {
        if let eventsData = UserDefaults.standard.object(forKey:  "events") {
            if let mydata = try? JSONDecoder().decode([Event].self, from: eventsData as! Data) {
                self.events = mydata
            }
        }
    }
    
    func getIndexOfEvent(event: Event) -> Int{
        return events.firstIndex(where: {$0.eventId == event.eventId}) ?? -1
    }
    
    func updateEvent(event: Event) {
        let myIndex = getIndexOfEvent(event: event)
        if(myIndex != -1){
            events[myIndex] = event
        }
    }
    
    func addEvent(event: Event){
        events.append(event)
    }
    
    func deleteAtOffsets(offset: IndexSet){
        events.remove(atOffsets: offset)
    }
    
    func deleteAtIndex(index: Int){
        events.remove(at: index)
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        events = try values.decode([Event].self, forKey: .events)
    }
    
    enum CodingKeys: String, CodingKey {
      case events
   }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(events, forKey: .events)
    }
}
