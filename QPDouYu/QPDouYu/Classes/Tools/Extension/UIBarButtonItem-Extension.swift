//
//  UIBarButtonItem-Extension.swift
//  QPDouYu
//
//  Created by JackieQu on 2018/4/23.
//  Copyright © 2018年 JackieQu. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    /*
    class func createItem(imageName: String, highImageName: String, size: CGSize) -> UIBarButtonItem {
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: UIControlState.normal)
        btn.setImage(UIImage(named: highImageName), for: UIControlState.highlighted)
        
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        
        return UIBarButtonItem(customView: btn)
    }
    */
    
    // 便利构造函数：
    // 1. convenience 开头
    // 2. 在构造函数中必须明确调用一个设计的构造函数（self）
    convenience init(imageName: String, highImageName: String = "", size: CGSize = CGSize.zero) {
        // 1. 创建 UIButton
        let btn = UIButton()
        
        // 2. 设置 btn 的图片
        btn.setImage(UIImage(named: imageName), for: UIControlState.normal)
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: UIControlState.highlighted)
        }
        
        // 3. 设置 btn 的尺寸
        if size == CGSize.zero {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        // 4. 创建 UIBarButtonItem
        self.init(customView: btn)
    }
}
