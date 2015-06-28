//
//  ViewController.swift
//  TexttoSpeechApp
//
//  Created by Mohamed El-Alfy on 12/16/14.
//  Copyright (c) 2014 Mohamed El-Alfy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController , UITextViewDelegate {

    
    @IBOutlet weak var textView: UITextView!
    
    let synth = AVSpeechSynthesizer()
    
    var myUtterance :AVSpeechUtterance!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textToSpeech(sender: AnyObject) {
        myUtterance = AVSpeechUtterance(string: textView.text)
        myUtterance.rate = 0.1
        synth.speakUtterance(myUtterance)
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    
    func textViewShouldEndEditing(textView: UITextView) -> Bool {
        return true
    }

}

