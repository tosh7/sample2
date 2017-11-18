//
//  secoundViewController.swift
//  sample2
//
//  Created by Satoshi Komatsu on 2017/10/27.
//  Copyright © 2017年 Satoshi Komatsu. All rights reserved.
//

import UIKit

class secoundViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    var date: Date!
    var formatter: DateFormatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        date = datePicker.date
        
        formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        
    }

    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func button(_ sender: Any) {
        let dateText = formatter.string(from: date!)
        dateLabel.text = dateText
    }
    
}
