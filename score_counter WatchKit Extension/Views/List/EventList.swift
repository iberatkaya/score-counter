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
                indexSet.forEach { i in
                    //Since the list is reversed,
                    //the index is length(arr) - i - 1
                    let j = (eventsModel.events.count - 1) - i
                    eventsModel.deleteAtIndex(index: j)
                }
            })
        }
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList(eventsModel: EventsModel())
    }
}
