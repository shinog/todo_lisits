//
//  DetailViewController.swift
//  MvcUnderstand
//
//  Created by 木村凌祐 on 2016/07/27.
//  Copyright © 2016年 mycompany. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book: Array = userDefaults.objectForKey("Lists") as! [String]
        textfield.text = book[0]
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        var book: Array = userDefaults.objectForKey("Lists") as! [String]
        book.append(textfield.text!)
        userDefaults.setObject(book, forKey:"Lists")
        userDefaults.synchronize()
        self.navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func cancelButton(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
