//
//  Functions.swift
//  Clipboard Find And Replace
//
//  Created by Fool on 8/25/15.
//  Copyright © 2015 Fulgent Wake. All rights reserved.
//

import Cocoa


func doFindAndReplace(textToFind: String, textToReplace: String, theWindow: NSWindow) {
	var newText = String()
	let pasteBoard = NSPasteboard.generalPasteboard()
	let theText = pasteBoard.stringForType("public.utf8-plain-text")
	if theText != nil {
	newText = theText!.stringByReplacingOccurrencesOfString(textToFind, withString: textToReplace)
	}
	
	if !newText.isEmpty {
	pasteBoard.clearContents()
	pasteBoard.setString(newText, forType: NSPasteboardTypeString)
	} else {
		createAlertSheet(theWindow)
	}
}

func createAlertSheet(theWindow:NSWindow) {
	let alertSheet = NSAlert()
	alertSheet.messageText = "The clipboard containted no valid text with wich to work.  Please try copying your text and running the program again"
	alertSheet.beginSheetModalForWindow(theWindow) {(NSModalResponse) -> Void in
		//let theResponse = NSModalResponse
	}
}
