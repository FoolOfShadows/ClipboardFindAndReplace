//
//  AppDelegate.swift
//  Clipboard Find And Replace
//
//  Created by Fool on 8/25/15.
//  Copyright © 2015 Fulgent Wake. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!

	@IBOutlet weak var textToFind: NSTextField!
	@IBOutlet weak var replacementText: NSTextField!
	

	func applicationDidFinishLaunching(aNotification: NSNotification) {
		// Insert code here to initialize your application
	}
	
	
	@IBAction func takeFindView(sender: AnyObject) {
		
	}

	@IBAction func performFindAndReplace(sender: AnyObject) {
		let theTextToFind = textToFind.stringValue
		let theReplacementText = replacementText.stringValue
		doFindAndReplace(theTextToFind, textToReplace: theReplacementText, theWindow: window)
		
	}
	

	
	
	func applicationWillTerminate(aNotification: NSNotification) {
		// Insert code here to tear down your application
	}


	func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool {
		return true
	}
	
}

