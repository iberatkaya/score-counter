//
//  score_counterApp.swift
//  score_counter WatchKit Extension
//
//  Created by MACBOOK on 25.10.2020.
//

import SwiftUI

@main
struct score_counterApp: App {
    @StateObject var eventsModel: EventsModel = EventsModel()
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView().environmentObject(eventsModel)
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
