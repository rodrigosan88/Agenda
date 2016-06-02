//
//  ViewController.swift
//  Agenda
//
//  Created by iOS on 02/06/16.
//  Copyright © 2016 Rodrigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!

    @IBOutlet weak var txMensagem: UITextField!
    
    @IBAction func btnAgendar(sender: AnyObject) {
        
        print("AGENDAR")
        
        let localNotification: UILocalNotification = UILocalNotification()
        localNotification.alertBody = self.txMensagem.text!
        localNotification.alertTitle = "Lembrete"
        localNotification.fireDate = self.datePicker.date
        localNotification.timeZone = self.datePicker.timeZone
        
        
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        
        self.txMensagem.resignFirstResponder()
        self.txMensagem.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

