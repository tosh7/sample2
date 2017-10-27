//
//  ViewController.swift
//  sample2
//
//  Created by Satoshi Komatsu on 2017/10/27.
//  Copyright © 2017年 Satoshi Komatsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func move1(_ sender: Any) {
        
        counter = counter + 1
        print(counter)
        
        if counter == 2{
            self.performSegue(withIdentifier: "toSecond", sender: nil)
            counter = 0
        }
    }
    
    @IBAction func move2(_ sender: Any) {
        let storyboard: UIStoryboard = self.storyboard!
        let second = storyboard.instantiateViewController(withIdentifier: "second")
        self.present(second, animated: true, completion: nil)
    }
    
}

