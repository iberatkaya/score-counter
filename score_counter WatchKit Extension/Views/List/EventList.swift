//
//  EventList.swift
//  score_counter WatchKit Extension
//
//  Created by Ibrahim Berat Kaya on 5.11.2020.
//

import SwiftUI

struct EventList: View {
    var events: [Event]
    var body: some View {
        List(events) { event in
            HStack {    
                Spacer()
                EventRow(event: event)
                Spacer()
            }
        }
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList(events: [Event(title: "Test", firstPlayer: Player(name: "James", score: 5), secondPlayer: Player(name: "Mike", score: 2)),Event(title: "Test 2", firstPlayer: Player(name: "John", score: 1), secondPlayer: Player(name: "Joe", score: 2))])
    }
}
