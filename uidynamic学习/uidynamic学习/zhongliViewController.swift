//
//  zhongliViewController.swift
//  uidynamic学习
//
//  Created by hejingjin on 16/6/21.
//  Copyright © 2016年 Chinahr. All rights reserved.
//

import UIKit

class zhongliViewController: UIViewController {

    @IBOutlet weak var behiveritemview: UIView!
    
    lazy  var animator : UIDynamicAnimator  = { () -> UIDynamicAnimator in
        let animators = UIDynamicAnimator(referenceView: self.view);
//        animators.referenceView = self.view
      
        return animators
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func creatbehiver() -> Void {
       //仿真步骤 1。 创建仿真器 2.创建仿真行为  3.添加仿真对象
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //仿真步骤 1。 创建仿真器 2.创建仿真行为  3.添加仿真对象
        
//        let animator = UIDynamicAnimator(referenceView: self.view)
        
        let behiver = UIGravityBehavior()
        behiver.addItem(behiveritemview)
        //加速度
        behiver.magnitude = 10
        
        
        behiver.angle = 1
        
        
        behiver.gravityDirection = CGVector.init(dx: 1, dy: 1) //重力方向
        self.animator.addBehavior(behiver)
        
        
    }
    
    
    @IBAction func close(sender: AnyObject) {
        self.dismissViewControllerAnimated(false, completion: nil);
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
