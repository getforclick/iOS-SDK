//
//  ViewController.swift
//  get4clickSDK
//
//  Created by igorexax3mal on 03/24/2022.
//  Copyright (c) 2022 igorexax3mal. All rights reserved.
//

import UIKit
import get4clickSDK

class ViewController: UIViewController {

    @IBOutlet weak var bannerView: BannerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Get4ClickSDK.shared.initSDK(shopId: 863)
        //Где-то на экранах создания заказа по шагам
         Get4ClickSDK.shared.getCurrentOrder().customerFirstName = "FirstName"
         //либо Где-то на экране создания заказа все вместе
         Get4ClickSDK.shared.getCurrentOrder().setCustomerLastName("LastName")
            .setCustomerGender(Order.Gender.male).setOrderCurrency(Currency.RUB)


       
        let banner = Get4ClickSDK.shared.getBannerWithCurrentOrder(bannerId: 2804)
        bannerView.showDebugBanner(banner: banner, scale: 1.0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

