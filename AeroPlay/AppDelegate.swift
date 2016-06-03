//
//  AppDelegate.swift
//  AeroPlay
//
//  Created by Colton Anglin on 6/1/16.
//  Copyright © 2016 Colton Anglin. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        
        for i in 0...200 {
            let server = AirplayServer(serverName: "Airplay Server", UID: UInt8(i), serverPortNumber: 6050 + (i * 10), controlPortNumber: 6051 + (i * 10), timingPortNumber: 6052 + (i * 10))
            server.start() // Start Airplay server

        }
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

