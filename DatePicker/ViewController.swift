//
//  ViewController.swift
//  DatePicker
//
//  Created by SABA on 12/02/18.
//  Copyright © 2018 com.ios.sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var datepicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func selectdate(_ sender: Any) {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: datepicker.date)
        datelabel.text = strDate
    }
    
}

