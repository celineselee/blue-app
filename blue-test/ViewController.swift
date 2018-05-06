//
//  ViewController.swift
//  blue-test
//
//  Created by Celine Lee on 2018-05-05.
//  Copyright © 2018 Celine Lee. All rights reserved.
//

import UIKit
import NaturalLanguageUnderstandingV1

class ViewController: UIViewController {
    
    @IBAction func checkButton(_ sender: Any) {
//        NSLog(textField.text!)
        
        let nls = NaturalLanguageUnderstanding(username: "3c125aaa-6f52-4791-ba2f-214ebc8dd988", password: "ERdsqN5Sqdk6", version: "2018-03-16");
        
        let features = Features(concepts: nil, emotion: nil, entities: nil, keywords: nil, metadata: nil, relations: nil, semanticRoles: nil, sentiment: SentimentOptions(document: true, targets: nil), categories: nil);
        
        let params = Parameters(features: features, text: textField.text, html: nil, url: nil, clean: nil, xpath: nil, fallbackToRaw: nil, returnAnalyzedText: true, language: nil, limitTextCharacters: nil);
        
          nls.analyze(parameters: params, success:{ results in
            self.printSentiment(sentimentResult: results.sentiment.unsafelyUnwrapped.document?.label as! String);});

//        nls.analyze(parameters: params, success:{ results in
//            print("%@", results);
//        });
    }
    
        func printSentiment(sentimentResult: String) {
            
            print(sentimentResult)
            
            if sentimentResult == "negative" {
                DispatchQueue.main.async { self.performSegue(withIdentifier: "sadScreenSegue", sender: self)
                }
            }
        else {
            
                DispatchQueue.main.async {                 self.performSegue(withIdentifier: "happyScreenSegue", sender: self)
                    }
            }
        }
    
    
    @IBOutlet weak var textField: UITextField!
    //    @IBOutlet weak var textField: UITextView!
    
//    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.borderStyle = UITextBorderStyle.roundedRect

    }
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

