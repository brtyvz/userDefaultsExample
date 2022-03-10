//
//  ViewController.swift
//  seguedeneme
//
//  Created by Berat Yavuz on 9.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var notTextField: UITextField!
    @IBOutlet weak var zamanTextField: UITextField!
    @IBOutlet weak var notLabel: UILabel!
    @IBOutlet weak var zamanLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        
        //yukarıda userDefault ile kaydettiğimiz değerleri değişkenler ile aldık
        //şimdi ise if let yapısı ile çekicez
        
        if let gelenZaman = kaydedilenZaman as? String{
            zamanLabel.text = "\(gelenZaman)"
            
        }
        if let gelenNot = kaydedilenNot as? String{
            notLabel.text = " \(gelenNot)"
        }
        
        
    }
    @IBAction func kaydetTiklandi(_ sender: Any) {
        UserDefaults.standard.set(notTextField.text!, forKey: "not")
        UserDefaults.standard.set(zamanTextField.text!, forKey: "zaman")
        
        notLabel.text = String(" \(notTextField.text!)")
        zamanLabel.text = String("\(zamanTextField.text!)")
    }
    
    @IBAction func silTiklandi(_ sender: Any) {
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        
        if (kaydedilenNot as? String) != nil{
            
            UserDefaults.standard.removeObject(forKey: "not")
            notLabel.text = "Yapılacak iş:"
        }
        if(kaydedilenZaman as? String) != nil{
            UserDefaults.standard.removeObject(forKey:"zaman")
            zamanLabel.text = "Yapılacak zaman:"
        }
        
    }
    
}

