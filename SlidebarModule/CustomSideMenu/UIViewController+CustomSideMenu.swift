//
//  UIViewController+CustomSideMenu.swift
//  CustomSideMenu
//


import UIKit

// MARK: - UIViewController+CustomSideMenu

extension UIViewController {

    public var sideMenuViewController: CustomSideMenu? {
        get {
            guard var iterator = self.parent else { return nil }
            guard let strClass = String(describing: type(of: iterator)).components(separatedBy: ".").last else { return nil }

            while strClass != nibName {
                if iterator is CustomSideMenu {
                    return iterator as? CustomSideMenu
                } else if iterator.parent != nil && iterator.parent != iterator {
                    iterator = iterator.parent!
                }
            }
            return nil
        }
        set(newValue) {
            self.sideMenuViewController = newValue
        }
    }

    // MARK: - Public
    // MARK: - IBAction Helper methods

    @IBAction public func presentLeftMenuViewController(_ sender: AnyObject) {
        self.sideMenuViewController?.presentLeftMenuViewController()
    }

    @IBAction public func presentRightMenuViewController(_ sender: AnyObject) {
        self.sideMenuViewController?.presentRightMenuViewController()
    }
}
