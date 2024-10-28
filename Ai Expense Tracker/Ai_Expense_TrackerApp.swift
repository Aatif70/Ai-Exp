//
//  Ai_Expense_TrackerApp.swift
//  Ai Expense Tracker
//
//  Created by Aatif Ahmed on 10/28/24.
//

import SwiftUI

@main
struct Ai_Expense_TrackerApp: App {
    
    
    #if os (macOS)
    @NSApplicationDelegateAdaptor private var appDelegate: AppDelegate
    #else
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    #endif
    
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
#if os (macOS)
                .frame(minWidth:729, minHeight: 480)
            #endif
            
        }
        #if os (macOS)
        .windowResizability(.contentMinSize)
        #endif
    }
}
