//
//  RootViewController.swift


import UIKit

public class RootViewController: CustomSideMenu, CustomSideMenuDelegate {

    override public func awakeFromNib() {
        super.awakeFromNib()

        self.contentViewShadowColor = .black
        self.contentViewShadowOffset = CGSize(width: -1, height: 1)
        self.contentViewShadowOpacity = 0.3
        self.contentViewShadowRadius = 15
        self.contentViewShadowEnabled = true
        self.contentViewScaleValue = 0.8
        self.contentViewInPortraitOffsetCenterX = -50
        self.contentViewInLandscapeOffsetCenterX = -50
        self.bouncesHorizontally = false
        
        self.contentViewController = self.storyboard!.instantiateViewController(withIdentifier: "contentViewController") as! UINavigationController
        self.leftMenuViewController = self.storyboard!.instantiateViewController(withIdentifier: "LeftMenuViewController")
        
        
        Global.navigationController = self.contentViewController as? UINavigationController
        let imageView = UIImageView(image:#imageLiteral(resourceName: "logo-icon"))
        Global.navigationController?.navigationItem.titleView = imageView
        
        self.delegate = self
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - <CustomSideMenuDelegate>

    public func sideMenu(_ sideMenu: CustomSideMenu, willShowMenuViewController menuViewController: UIViewController) {
        print("willShowMenuViewController")
    }

    public func sideMenu(_ sideMenu: CustomSideMenu, didShowMenuViewController menuViewController: UIViewController) {
        print("didShowMenuViewController")
    }

    public func sideMenu(_ sideMenu: CustomSideMenu, willHideMenuViewController menuViewController: UIViewController) {
        print("willHideMenuViewController")
    }

    public func sideMenu(_ sideMenu: CustomSideMenu, didHideMenuViewController menuViewController: UIViewController) {
        print("didHideMenuViewController")
    }
}
