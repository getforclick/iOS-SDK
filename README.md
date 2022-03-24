# GET4Click SDK IOS
Это SDK для GET4Click , Swift(IOS) в будущем релизе возможен переход на Kotlin Multiplatform

[![CI Status](https://img.shields.io/travis/igorexax3mal/get4clickSDK.svg?style=flat)](https://travis-ci.org/igorexax3mal/get4clickSDK)
[![Version](https://img.shields.io/cocoapods/v/get4clickSDK.svg?style=flat)](https://cocoapods.org/pods/get4clickSDK)
[![License](https://img.shields.io/cocoapods/l/get4clickSDK.svg?style=flat)](https://cocoapods.org/pods/get4clickSDK)
[![Platform](https://img.shields.io/cocoapods/p/get4clickSDK.svg?style=flat)](https://cocoapods.org/pods/get4clickSDK)



## Установка  IOS

Установка происходит через cocoapods или скачав framework
```swift
    pod get4clickSDK
```


## Быстрый старт

В начале (перед созданием  заказа )инициализируйте SDK , методом initSDK(shopId : Int) задав ваш shopId 
убедитесь что в каждом месте имопртируете модуль get4clickSDK
```swift
   import get4clickSDK


   GET4ClickSDK.shared.initSDK(863)
```



Чтобы собрать параметры для заказа воспользуйтесь паттерном builder для обьекта order 

```swift
    GET4ClickSDK.shared.getCurrentOrder().
                    setCustomerFirstName('name').
                    setCustomerLastName('lastname')...

 ```

Возможные параметры для обьекта Order :


    Gender {
        male,
        female
    }

     customerFirstName: String
     customerLastName: String
     customerEmail: String
     customerPhone: String
     customerGender: Gender
     orderId: String
     orderValue: String
     orderCurrency: Currency
     usedPromoCode: String
     usedCategory : String




Есть возможность добавить несколько обьектов Order, для последующего выбора и вставки в BannerView



Добавьте WKWebView в разметку autolayout  и укажите BannerView как класс для текущего View (модуль get4clicSDK), или создайте программно как обычно




Создайте обьект Banner , передав ему bannerId  и Order 

```swift
let banner = Banner(bannerId, order)
 ```
 
для удобства есть метод формирования обькета Banner для текущего Order в GET4ClickSDK.getBannerWithCurrentOrder(bannerId)


Вызовите метод showBanner(banner) у BannerView когда будете готовы 

```swift
@IBOutlet bannerView : BannerView

bannerView.showBanner(banner)
 ```

У метода showBanner() есть не обязательный параметр scale : Double - можно уменьшить или увеличить баннер (по умолчанию 1.0)

Вызовите метод  GET4ClickSDK.shared.resetCurrentOrder() для сброса текущего Order

Полный код выглядит так :
```swift

        @IBOutlet bannerView : BannerView
        
        Get4ClickSDK.shared.initSdk(863)

       //Где-то на экранах создания заказа по шагам 
        Get4ClickSDK.shared.getCurrentOrder().customerFirstName = "FirstName"
        //либо Где-то на экране создания заказа все вместе
        Get4ClickSDK.shared.getCurrentOrder().setCustomerLastName("LastName")
                                      .setCustomerGender(Order.Gender.male)


      
        let banner = Get4ClickSDK.shared.getBannerWithCurrentOrder(2804)
        bannerView.showBanner(banner, 1.0)
 ```


## License

get4clickSDK is available under the MIT license. See the LICENSE file for more info.
