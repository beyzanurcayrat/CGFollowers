//
//  UIHelper.swift
//  CGFollowers
//
//  Created by beyzanur cayrat on 15.02.2024.
//

import UIKit

//12.01
enum UIHelper {

    static func createThreeColumnFlowlayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width                       = view.bounds.width
        let padding: CGFloat            = 12
        let minimumItemSpacing: CGFloat = 10
        let avaliableWidth              = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth                   = avaliableWidth / 3
        
        let flowLayout           = UICollectionViewFlowLayout()
        flowLayout.sectionInset  = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize      = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
        
    }

    
}
