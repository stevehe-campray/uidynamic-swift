//
//  ViewController.swift
//  uidynamic学习
//
//  Created by hejingjin on 16/6/21.
//  Copyright © 2016年 Chinahr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func xifu(sender: AnyObject) {
        let xifuvc = xifuViewController()
        self.presentViewController(xifuvc, animated: false, completion: nil)
        
    }
    @IBAction func zhonglixingw(sender: AnyObject) {
        
        let zhonglivc  = zhongliViewController();
        self.presentViewController(zhonglivc, animated: false, completion: nil);
    }

    @IBAction func pengzhuang(sender: AnyObject) {
        let pengzhuangvc = pengzhuangViewController()
        self.presentViewController(pengzhuangvc, animated: false, completion: nil)
        
        
    }
}

