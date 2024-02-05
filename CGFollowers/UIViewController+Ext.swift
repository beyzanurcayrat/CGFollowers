//
//  UIViewController+Ext.swift
//  CGFollowers
//
//  Created by beyzanur cayrat on 5.02.2024.
//

import UIKit

extension UIViewController {
    func presentCFAlertOnMainThread (title: String, message: String,  buttonTitle: String){
        DispatchQueue.main.async {
            let alertVC = CFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle   = .overFullScreen
            alertVC.modalTransitionStyle     = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
