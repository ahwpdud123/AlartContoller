//
//  ViewController.swift
//  AlartContoller
//
//  Created by D7703_15 on 2018. 4. 16..
//  Copyright © 2018년 D7703_15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        let myAlert = UIAlertController(title: "알림", message: "설정된 시간이 되었습니다!!", preferredStyle: .actionSheet)
        
        // 세번째 인자를 클로져 사용
        // 후행 클로져(Trailing Closure)
        let okAction = UIAlertAction(title: "종료", style: .default) { (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.red
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: { (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.green
        })
        
        let testAction = UIAlertAction(title: "테스트", style: .default, handler:  nil)
        
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        myAlert.addAction(testAction)
        
        present(myAlert, animated: true, completion: nil)
    }
    
}


