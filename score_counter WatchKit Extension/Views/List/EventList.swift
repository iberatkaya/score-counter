//
//  EventList.swift
//  score_counter WatchKit Extension
//
//  Created by Ibrahim Berat Kaya on 5.11.2020.
//

import SwiftUI

struct EventList: View {
    @ObservedObject var eventsModel: EventsModel
    var body: some View {
        List {
            ForEach(eventsModel.events.reversed()) { event in
                HStack {
                    Spacer()
                    EventRow(event: event)
                    Spacer()
                }
            }.onDelete(perform: { indexSet in
                eventsModel.deleteAtOffsets(offset: indexSet)
            })
        }
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList(eventsModel: EventsModel())
    }
}
