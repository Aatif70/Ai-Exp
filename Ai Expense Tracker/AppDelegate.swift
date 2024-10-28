//
//  AppDelegate.swift
//  Ai Expense Tracker
//
//  Created by Aatif Ahmed on 10/28/24.
//

import Firebase
import FirebaseFirestore
import Foundation

#if os (macOS)
import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        setupFirebase()
    }
}

#else
import UIKit
class ApplicationDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        setupFirebase()
        return true
    }
}


#endif

fileprivate func isPreviewRuntime() -> Bool {
    ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEW"] == "1"
}

fileprivate func setupFirebase() {
    FirebaseApp.configure()
    if isPreviewRuntime() {
        let settings = Firestore.firestore().settings
        settings.host = "localhost:8080"
//        settings.isPersistentEnabled = false
        settings.isSSLEnabled = false
        Firestore.firestore().settings = settings
    }
}




//hehehe commit
