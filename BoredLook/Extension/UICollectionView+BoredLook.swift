//
//  UICollectionView+boredLook.swift
//  boredLook
//
//  Created by nixzhu on 15/12/11.
//  Copyright © 2015年 Catch Inc. All rights reserved.
//

import UIKit

extension UICollectionView {

    func registerClassOf<T: UICollectionViewCell where T: Reusable>(_: T.Type) {

        registerClass(T.self, forCellWithReuseIdentifier: T.boredLook_reuseIdentifier)
    }

    func registerNibOf<T: UICollectionViewCell where T: Reusable, T: NibLoadable>(_: T.Type) {

        let nib = UINib(nibName: T.boredLook_nibName, bundle: nil)
        registerNib(nib, forCellWithReuseIdentifier: T.boredLook_reuseIdentifier)
    }

    func registerHeaderNibOf<T: UICollectionReusableView where T: Reusable, T: NibLoadable>(_: T.Type) {

        let nib = UINib(nibName: T.boredLook_nibName, bundle: nil)
        registerNib(nib, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: T.boredLook_reuseIdentifier)
    }

    func registerFooterClassOf<T: UICollectionReusableView where T: Reusable>(_: T.Type) {

        registerClass(T.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: T.boredLook_reuseIdentifier)
    }

    func dequeueReusableCell<T: UICollectionViewCell where T: Reusable>(forIndexPath indexPath: NSIndexPath) -> T {
        
        guard let cell = dequeueReusableCellWithReuseIdentifier(T.boredLook_reuseIdentifier, forIndexPath: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.boredLook_reuseIdentifier)")
        }

        return cell
    }

    func dequeueReusableSupplementaryView<T: UICollectionReusableView where T: Reusable>(ofKind kind: String, forIndexPath indexPath: NSIndexPath) -> T {

        guard let view = dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: T.boredLook_reuseIdentifier, forIndexPath: indexPath) as? T else {
            fatalError("Could not dequeue supplementary view with identifier: \(T.boredLook_reuseIdentifier), kind: \(kind)")
        }

        return view
    }
}

