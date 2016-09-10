//
//  MainViewController.swift
//  BoredLook
//
//  Created by yck on 2016/9/10.
//  Copyright © 2016年 yck. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.whiteColor()
        setupNavigationItem()
    }

    private func setupNavigationItem() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage.boredLook_NavLeftItem,
                                                           style: .Done,
                                                           target: self,
                                                           action: #selector(MainViewController.leftItemChick))
        
        navigationItem.titleView = UIImageView(image: UIImage.boredLook_NavTitleView)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage.boredLook_NavRightItem,
                                                            style: .Done,
                                                            target: self,
                                                            action: #selector(MainViewController.rightItemChick))
    }
    
    @objc private func leftItemChick() {
        
    }
    
    @objc private func rightItemChick() {
        
    }
}
