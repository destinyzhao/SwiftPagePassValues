//
//  DetailViewController.swift
//  SwiftPagePassValue
//
//  Created by Alex on 16/7/14.
//  Copyright © 2016年 Alex. All rights reserved.
//

import UIKit

protocol DetialDelegate{
    func passVauleFromDetailVC(value:String)
}

class DetailViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    
    var delegate:DetialDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClicked(sender: AnyObject) {
        
        if (delegate != nil && !self.inputTextField.text!.isEmpty) {
           
            self.delegate?.passVauleFromDetailVC(self.inputTextField.text!)
            self.navigationController?.popViewControllerAnimated(true)
        }
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
