//
//  SLBasicTabbarController.swift
//  News
//
//  Created by jh on 2020/4/12.
//  Copyright © 2020 Fengmap. All rights reserved.
//

import UIKit

class SLBasicTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabbar = UITabBar.appearance()
        tabbar.tintColor = UIColor(red: 245 / 255.0, green: 90 / 255.0, blue: 93 / 255.0, alpha: 1.0)
        
        addChildrenVCs()
        
    }
    
    func addChildrenVCs() {
        setChildVC(SLHomeVC(), imageName: "home_tabbar_32x32_", selectedImageName: "home_tabbar_press_32x32_", title: "首页")
        setChildVC(SLVideoVC(), imageName: "video_tabbar_32x32_", selectedImageName: "video_tabbar_press_32x32_", title: "视频")
        setChildVC(SLHuoShanVC(), imageName: "huoshan_tabbar_32x32_", selectedImageName: "huoshan_tabbar_press_32x32_", title: "小视频")
        setChildVC(SLMineVC(), imageName: "mine_tabbar_32x32_", selectedImageName: "mine_tabbar_press_32x32_", title: "我的")
        
        setValue(SLTabBar(), forKey: "tabbar")
    }
    
    
    func setChildVC(_ childVC: SLBasicViewController, imageName: String, selectedImageName: String, title: String) {
        childVC.tabBarItem.image = UIImage(named: imageName)
        childVC.tabBarItem.selectedImage = UIImage(named: selectedImageName)
        childVC.title = title
        
        let naviVC = SLNavigationController(rootViewController: childVC)
        addChild(naviVC)
    }
    
    


}
