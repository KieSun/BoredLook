//
//  UITableView+boredLook.swift
//  boredLook
//
//  Created by nixzhu on 15/12/11.
//  Copyright © 2015年 Catch Inc. All rights reserved.
//

import UIKit


extension UITableView {

    func registerClassOf<T: UITableViewCell where T: Reusable>(_: T.Type) {

        registerClass(T.self, forCellReuseIdentifier: T.boredLook_reuseIdentifier)
    }

    func registerNibOf<T: UITableViewCell where T: Reusable, T: NibLoadable>(_: T.Type) {

        let nib = UINib(nibName: T.boredLook_nibName, bundle: nil)
        registerNib(nib, forCellReuseIdentifier: T.boredLook_reuseIdentifier)
    }

    func registerHeaderFooterClassOf<T: UITableViewHeaderFooterView where T: Reusable>(_: T.Type) {

        registerClass(T.self, forHeaderFooterViewReuseIdentifier: T.boredLook_reuseIdentifier)
    }

    func dequeueReusableCell<T: UITableViewCell where T: Reusable>() -> T {

        guard let cell = dequeueReusableCellWithIdentifier(T.boredLook_reuseIdentifier) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.boredLook_reuseIdentifier)")
        }
        
        return cell
    }

    func dequeueReusableHeaderFooter<T: UITableViewHeaderFooterView where T: Reusable>() -> T {

        guard let view = dequeueReusableHeaderFooterViewWithIdentifier(T.boredLook_reuseIdentifier) as? T else {
            fatalError("Could not dequeue HeaderFooter with identifier: \(T.boredLook_reuseIdentifier)")
        }

        return view
    }
}

