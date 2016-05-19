//
//  ViewController.swift
//  Example--F.O.X-Engagement-Swift
//
//  Created by MMizogaki on 2016/05/19.
//  Copyright © 2016年 MMizogaki. All rights reserved.
//

import UIKit


class ViewController: UIViewController,FEGAdBannerStateDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let placementId: String = "" // 管理者より発行される
//        let frame: CGRect = CGRectMake(0, 100, 0, 0) // 場所だけ指定する
//        let adView: FEGAdView = FEGAdView(frame: frame)
//        adView.placementId = placementId
//        adView.size = FEG_ADVIEW_SIZE._320x50
//        self.view.addSubview(adView)
//        adView.show()
        
        let placementId: String = "" // 管理者より発行される
        let frame: CGRect = CGRectMake(0, 100, 0, 0) // 場所だけ指定する
        let adView: FEGAdView = FEGAdView(frame: frame)
        adView.placementId = placementId
        adView.size = FEG_ADVIEW_SIZE._320x50
        adView.adStateDelegate = self
        self.view.addSubview(adView)
        adView.show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onAdClicked(view: UIView!) {
        print("clicked")
    }
    
    func onAdFailed(view: UIView!) {
        print("failed")
    }
    
    func onAdFallback(view: UIView!) -> Bool {
        
        return false
    }
    
    func onAdSuccess(view: UIView!) {
        print("success")
    }


}

