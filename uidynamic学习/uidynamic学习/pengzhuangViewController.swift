//
//  pengzhuangViewController.swift
//  uidynamic学习
//
//  Created by hejingjin on 16/6/21.
//  Copyright © 2016年 Chinahr. All rights reserved.
//

import UIKit

class pengzhuangViewController: UIViewController {

    @IBOutlet weak var secoendview: UIView!
    @IBOutlet weak var fistview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fistview.layer.cornerRadius = 20;
        self.secoendview.layer.cornerRadius = 20
        
        // Do any additional setup after loading the view.
    }
    
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
        
        let behivor = UICollisionBehavior()
        
        behivor.addItem(fistview)
        behivor.addItem(secoendview)
        
        let width = self.view.frame.size.width;
//        let height = CGFloat(Float(self.view.frame.size.height) - Float(width))
        
        let path = UIBezierPath(ovalInRect: CGRectMake(0, 0, width, width))
        behivor.addBoundaryWithIdentifier("circlle", forPath: path) //设置边界 可以通过其他方式不一定是贝塞尔曲线 还可以通过frompoint  topoint的方式去设置边界
       
        
        let gbehivor = UIGravityBehavior()
        gbehivor.magnitude = 40
//        gbehivor.gravityDirection = CGVectorMake(0, 1)
        gbehivor.addItem(fistview)
        
//        let gbehivor1 = UIGravityBehavior()
//        gbehivor1.magnitude = 10
//        gbehivor1.gravityDirection = CGVectorMake(0, -1)
//        gbehivor1.addItem(secoendview)
        
        animator.addBehavior(behivor)
        animator.addBehavior(gbehivor)
//        animator.addBehavior(gbehivor1)
        
        
        
    }
    

    @IBAction func close(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(false, completion: nil)
    }
    

}
