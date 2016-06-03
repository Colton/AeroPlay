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
        
            let server = AirplayServer(serverName: "Airplay Server", UID: 1, serverPortNumber: 6050, controlPortNumber: 6051, timingPortNumber: 6052)
            server.start() // Start Airplay server
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

