//
//  SendingVC.swift
//  Exercise1 Delegate
//
//  Created by sunny on 13/10/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit
protocol DataSentDelegate {
    func userDidEnterData(data: String)
}
class SendingVC: UIViewController {
    
    @IBOutlet weak var dataEntryTextField: UITextField!
    var delegate: DataSentDelegate? = nil
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func SendBtnWasPressed(_ sender: Any) {
        if delegate != nil {
            if dataEntryTextField.text != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
}
