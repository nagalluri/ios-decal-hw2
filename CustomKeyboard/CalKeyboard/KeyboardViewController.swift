//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var gbButton: UIButton!
    @IBOutlet var space: UIButton!
    @IBOutlet var btButton: UIButton!
    @IBOutlet var bearsButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    

    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func addGoBears() {
        (textDocumentProxy as UIKeyInput).insertText("Go Bears!")
    }
    
    func addBearTerritory() {
        (textDocumentProxy as UIKeyInput).insertText("This is Bear Territory!")
    }
    
    func addBears() {
        (textDocumentProxy as UIKeyInput).insertText("Bears!Bears!Bears!Bears!")
    }
    
    func addSpace() {
        (textDocumentProxy as UIKeyInput).insertText(" ")
    }
    
    func addReturn() {
        (textDocumentProxy as UIKeyInput).insertText("\n")
    }
    
    func addDelete() {
        (textDocumentProxy as UIKeyInput).deleteBackward()
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        gbButton.addTarget(self, action: "addGoBears", forControlEvents: .TouchUpInside)
        space.addTarget(self, action: "addSpace", forControlEvents: .TouchUpInside)
        btButton.addTarget(self, action: "addBearTerritory", forControlEvents: .TouchUpInside)
        bearsButton.addTarget(self, action: "addBears", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "dismissKeyboard", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "addDelete", forControlEvents: .TouchUpInside)
    }


}
