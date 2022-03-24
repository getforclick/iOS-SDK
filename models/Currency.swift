//
//  Currency.swift
//  sdk
//
//  Created by Igor Fedorov on 20.03.2022.
//

import Foundation

public class Currency {
    
    let currencyCode : String
    let displayName : String?
    let numericCode : Int?
    let symbol  : String?

    public  init(_ currencyCode : String, _ displayName :String? = nil,
         _ numericCode : Int? = 0,_ symbol : String? = nil){
        self.currencyCode = currencyCode
        self.displayName = displayName
        self.numericCode = numericCode
        self.symbol = symbol
        
    }

    
    public static let RUB  =  Currency("RUB","российский рубль",643,"₽")
    public static let USD  =  Currency("USD","доллар США",840,"$")
    public static let SGD  =  Currency("SGD","сингапурский доллар",702,"SGD")
    public static let ZAR  =  Currency("ZAR","южноафриканский рэнд",710,"ZAR")
    public static let UYW  =  Currency("UYW","",927,"UYW")
    public static let CRC  =  Currency("CRC","костариканский колон",188,"CRC")
    public static let XAU  =  Currency("XAU","Золото",959,"XAU")
    public static let XXX  =  Currency("XXX","неизвестная валюта",999,"XXX")
    public static let BYR  =  Currency("BYR","Белорусский рубль (2000–2016)",974,"BYR")
    public static let BYN  =  Currency("BYN","Белорусский рубль",933,"BYN")
    public static let GBP  =  Currency("BYR","британский фунт стерлингов",826,"£")
    public static let EUR  =  Currency("EUR","евро",978,"€")
   

}
