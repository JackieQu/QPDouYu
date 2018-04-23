//
//  HomeViewController.swift
//  QPDouYu
//
//  Created by JackieQu on 2018/4/23.
//  Copyright © 2018年 JackieQu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 设置 UI 界面
        setupUI()
    }

}

// MARK:- 设置 UI 界面
extension HomeViewController {
    private func setupUI() {
        // 1. 设置导航栏
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        // 1. 设置左侧 Item
        /*
        let btn = UIButton()
        btn.setImage(UIImage(named: "logo"), for: UIControlState.normal)
        btn.sizeToFit()
         */
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        
        // 2. 设置右侧 Item
        let size = CGSize(width: 40, height: 40)
        
        /*
        let historyItem = UIBarButtonItem.createItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        let searchItem = UIBarButtonItem.createItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        let qrcodeItem = UIBarButtonItem.createItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
         */
        
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "image_my_history_click", size: size)
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        
        navigationItem.rightBarButtonItems = [historyItem, searchItem, qrcodeItem]
    }
}
