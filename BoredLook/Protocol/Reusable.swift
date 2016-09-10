//
//  Reusable.swift
//  boredLook
//
//  Created by NIX on 16/6/14.
//  Copyright © 2016年 Catch Inc. All rights reserved.
//

import UIKit

protocol Reusable: class {

    static var boredLook_reuseIdentifier: String { get }
}

extension UITableViewCell: Reusable {

    static var boredLook_reuseIdentifier: String {
        return String(self)
    }
}

extension UITableViewHeaderFooterView: Reusable {

    static var boredLook_reuseIdentifier: String {
        return String(self)
    }
}

extension UICollectionReusableView: Reusable {

    static var boredLook_reuseIdentifier: String {
        return String(self)
    }
}

