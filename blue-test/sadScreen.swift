//
//  sadScreen.swift
//  blue-test
//
//  Created by Celine Lee on 2018-05-06.
//  Copyright © 2018 Celine Lee. All rights reserved.
//

import UIKit

class sadScreen: UIViewController {
   
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.borderStyle = UITextBorderStyle.roundedRect


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
