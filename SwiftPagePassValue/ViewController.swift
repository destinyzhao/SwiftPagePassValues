//
//  ViewController.swift
//  SwiftPagePassValue
//
//  Created by Alex on 16/7/14.
//  Copyright © 2016年 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DetialDelegate {

    @IBOutlet weak var textLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func detailBtnClicked(sender: UIButton) {
        // 代码跳转
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewControllerWithIdentifier("DetailStoryBoard") as! DetailViewController
        viewController.delegate = self
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func closureBtnClicked(sender: UIButton) {
        // 代码跳转
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewControllerWithIdentifier("DetailStoryBoard") as! DetailViewController
        self.navigationController?.pushViewController(viewController, animated: true)
        viewController.passValueClosure = { value in
            self.textLbl.text = value
        }
    }

    /**
     委托
     - parameter value:
     */
    func passVauleFromDetailVC(value: String) {
        self.textLbl.text = value
    }

}

