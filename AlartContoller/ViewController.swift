//
//  ViewController.swift
//  AlartContoller
//
//  Created by D7703_15 on 2018. 4. 16..
//  Copyright © 2018년 D7703_15. All rights reserved.
//




import UIKit

class ViewController: UIViewController {
    
    let timeSelector: Selector = #selector(ViewController.update)
    let interval = 1.0
    var count = 0
    
    @IBOutlet weak var timelbl: UILabel!
    @IBOutlet weak var datepiker: UIDatePicker!
    @IBOutlet weak var timelbl2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    @IBAction func DatePiker(_ sender: UIDatePicker) {
        let datePikerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        timelbl.text = formatter.string(from: datePikerView.date)
    }
    
    
    @objc func update() {
    let date = NSDate()
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm:ss"
    timelbl2.text = formatter.string(from: date as Date)
        
    if timelbl.text == timelbl2.text {
    view.backgroundColor = UIColor.red
        
    let alertController = UIAlertController(title: "알람", message: "설정된 시간입니다.", preferredStyle: UIAlertControllerStyle.alert)
            
    let DestructiveAction = UIAlertAction(title: "취소", style: UIAlertActionStyle.destructive) { (result : UIAlertAction) -> Void in
        
    }
            
    let okAction = UIAlertAction(title: "확인", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
                
    self.view.backgroundColor = UIColor.white
                
    }
    alertController.addAction(DestructiveAction)
    
    alertController.addAction(okAction)
    
self.present(alertController, animated: true, completion: nil)
        }
    }
    
    
    
}


