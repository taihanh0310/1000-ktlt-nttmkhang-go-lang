//
//  AppDelegate.swift
//  ex11-01_SpeakText
//
//  Created by Zhimin Zhan on 3/01/2016.
//  Copyright © 2016 AgileWay. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!

  @IBOutlet weak var text: NSTextField!

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    // Insert code here to initialize your application
  }
  
  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }

  @IBAction func speak(_ sender: NSButton) {
    NSLog("Speak button clicked")
    
    let task: Process  = Process()
    task.launchPath = "/usr/bin/say"
    task.arguments = ["-v", "fred", text.stringValue]
    task.launch()
    
    // the statement below will prevent do anything untils the tasks finishes
    task.waitUntilExit()
  }
  
}

