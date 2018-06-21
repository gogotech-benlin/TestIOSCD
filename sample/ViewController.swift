//
//  ViewController.swift
//  sample
//
//  Created by Ben Lin on 21/6/2018.
//  Copyright © 2018 Ben Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var keyName: UILabel!
    
    @IBOutlet weak var firstButton: UIButton!
    
    @IBOutlet weak var secondButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        secondButton.isEnabled=false
    }

    override func viewWillAppear(_ animated: Bool) {
        //this is called when view will appear
        print("view will appear")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear ")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func secondButton(_ sender: Any) {
        firstButton.isEnabled=true
        secondButton.isEnabled = false
        keyName.text = "start"
    }
    @IBAction func start(_ sender: Any) {
        keyName.text = "processing"
        secondButton.isEnabled=true
            firstButton.isEnabled = false
        
    }
    
}
