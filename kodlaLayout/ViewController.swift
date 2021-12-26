//
//  ViewController.swift
//  kodlaLayout
//
//  Created by Emircan saglam on 26.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mailField: UITextField!
    @IBOutlet weak var sonucLabel: UILabel!
    @IBOutlet weak var mesajField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    var mailArr : [String]?
    
    @IBAction func yollaClicked(_ sender: Any) {
        var isEmailCorrect = false
        var num = 0
        mailArr = mailField.text!.components(separatedBy: ",")
        for mail in mailArr!{
            for i in mail {
                if i == "@" {
                    num += 1
                    continue
                }
                
            }
        }
        if num == mailArr?.count{
            isEmailCorrect = true
        }
        
        
        var isMessageFilled = false
        if mesajField.text != ""{
            isMessageFilled = true
        }
        var mails = ""
        
    
        if isEmailCorrect {
            if isMessageFilled{
                for i in mailArr!{
                    mails += "To: \(String(i)) \r"
                    
                }
                print(mails)
                sonucLabel.text = mails
                
                messageLabel.text = "Mesaj: \(mesajField.text!)"
                messageLabel.textColor = UIColor.black
            }else{
                sonucLabel.text = "Boş bir mesaj yollanamaz!"
                messageLabel.text = ""
            }
        }else{
            sonucLabel.text = "Lutfen dogru bir eposta adresi giriniz"
            messageLabel.text = " "
        }
        
        
    }
    @IBAction func onemliClicked(_ sender: Any) {
        
        
        
        var isEmailCorrect = false
        var num = 0
        mailArr = mailField.text!.components(separatedBy: ",")
        for mail in mailArr!{
            for i in mail {
                if i == "@" {
                    num += 1
                    continue
                }
                
            }
        }
        if num == mailArr?.count{
            isEmailCorrect = true
        }
        
        
        var isMessageFilled = false
        if mesajField.text != ""{
            isMessageFilled = true
        }
        var mails = ""
        
    
        if isEmailCorrect {
            if isMessageFilled{
                for i in mailArr!{
                    mails += "To: \(String(i)) \r"
                    
                }
                print(mails)
                sonucLabel.text = mails
                
                messageLabel.text = "Mesaj: \(mesajField.text!)"
                messageLabel.textColor = UIColor.red
            }else{
                sonucLabel.text = "Boş bir mesaj yollanamaz!"
                messageLabel.text = ""
            }
        }else{
            sonucLabel.text = "Lutfen dogru bir eposta adresi giriniz"
            messageLabel.text = " "
        }
        
        
        
    }
    
}

