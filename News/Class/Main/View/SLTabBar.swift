//
//  SLTabBar.swift
//  News
//
//  Created by jh on 2020/4/13.
//  Copyright © 2020 Fengmap. All rights reserved.
//

import UIKit

class SLTabBar: UITabBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(publishButton)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private lazy var publishButton = { () -> UIButton in
        let publishButton = UIButton(type: .custom)
        publishButton.setBackgroundImage(UIImage(named: "feed_publish_44x44_"), for: .normal)
        publishButton.setBackgroundImage(UIImage(named: "feed_publish_44x44_"), for: .selected)
        return publishButton
    }()

}
