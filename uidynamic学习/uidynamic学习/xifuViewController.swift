//
//  xifuViewController.swift
//  uidynamic学习
//
//  Created by hejingjin on 16/6/21.
//  Copyright © 2016年 Chinahr. All rights reserved.
//

import UIKit

class xifuViewController: UIViewController {

    @IBOutlet weak var actionview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        actionview.layer.cornerRadius = 5;
        // Do any additional setup after loading the view.
    }
    //懒加载仿真器
    lazy  var animator : UIDynamicAnimator  = { () -> UIDynamicAnimator in
        let animators = UIDynamicAnimator(referenceView: self.view);
        //        animators.referenceView = self.view
        
        return animators
    }()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func creatbehiver() -> Void {
        print("11111");
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //仿真步骤 1。 创建仿真器 2.创建仿真行为  3.添加仿真对象
        
        
        let touch = touches.first
        
        let point = touch?.locationInView(self.view)
        
        
        let behavior = UISnapBehavior.init(item: self.actionview, snapToPoint: point!)
        
         // 防抖系数(值越小, 越抖)
         behavior.damping = 1.0;
        
        self.animator.removeAllBehaviors()
        self.animator.addBehavior(behavior)
        
       
        
    }
    
    
    @IBAction func close(sender: AnyObject) {
        self.dismissViewControllerAnimated(false, completion: nil)
    }


}
