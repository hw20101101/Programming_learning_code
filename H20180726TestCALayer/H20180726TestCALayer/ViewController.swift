//
//  ViewController.swift
//  H20180726TestCALayer
//
//  Created by hwacdx on 2018/7/26.
//  Copyright © 2018年 hwacdx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var drawLayer = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        //1.创建一个layer，添加到view的layer上
        self.view.layer.addSublayer(self.drawLayer)
        self.drawLayer.contentsScale = UIScreen.main.scale
        self.drawLayer.borderColor = UIColor.red.cgColor
        self.drawLayer.borderWidth = 5
        
        //2.设置layer的代理
        self.drawLayer.delegate = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //设置layer的frame
        let wh = self.view.frame.width - 40
        self.drawLayer.frame = CGRect(x: 20, y: 20, width: wh, height: wh)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //2.调用layer的setNeedsDisplay方法，layer进行绘制
        self.drawLayer.setNeedsDisplay()
    }

}

extension ViewController : CALayerDelegate {
    
    //3.实现代理方法，进行绘制
    func draw(_ layer: CALayer, in ctx: CGContext) {
        
        //下面是画线，还有一种是填充
        
        //设置画笔的颜色
        ctx.setStrokeColor(UIColor.green.cgColor)
        ctx.setLineWidth(2.0)
        ctx.addEllipse(in: CGRect(x: 10, y: 10, width: 50, height: 50))
        ctx.strokePath()//绘制渲染
    }
    
}
