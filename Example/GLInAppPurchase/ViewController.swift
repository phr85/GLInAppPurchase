//
//  ViewController.swift
//  GLInAppPurchase
//
//  Created by gokulgovind on 04/12/2017.
//  Copyright (c) 2017 gokulgovind. All rights reserved.
//

import UIKit
import GLInAppPurchase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Check(_ sender: AnyObject) {
        let actionSheet = UIAlertController(title: "Select Style", message: nil, preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Demo1", style: .default, handler: { (action) in
            self.demo1()
        }))
        actionSheet.addAction(UIAlertAction(title: "Demo2", style: .default, handler: { (action) in
            self.demo2()
        }))
        actionSheet.addAction(UIAlertAction(title: "Demo3", style: .default, handler: { (action) in
            self.demo3()
        }))
        actionSheet.addAction(UIAlertAction(title: "Demo4", style: .default, handler: { (action) in
            self.demo4()
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.navigationController?.present(actionSheet, animated: true, completion: nil)
        
        
    }
    
    func showSimpleAlert(_ message:String) {
        DispatchQueue.main.async { 
            let alert = UIAlertController(title: "Completion Handler", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.navigationController?.present(alert, animated: true, completion: nil)
        }
       
    }
    
    func demo1() {
        let appBanner = GLInAppPurchaseUI(title: "Skip The Line", subTitle: "Be first in the queue", footerText: footerText(), link: "http://yourdomain.com/term", bannerBackGroundStyle: .transparentStyle)
        
        appBanner.displayContent(imageSetWithDescription:
            [
                UIImage(named:"IMG_1")!:"Rewind Your Last Swipe##Go back and swipe again",
                UIImage(named:"IMG_2")!:"",
                UIImage(named:"IMG_3")!:"Send More Super Likes##Let them know you are interested",
            ])
        appBanner.addButtonWith("BOOST ME", cancelTitle: "NO, THANKS") { (selectedTitle, isOptionSelected, selectedAction) in
            if isOptionSelected {  //Some Option have been selected
                print("Selected Price \(selectedAction.actionPrice!)")
            }
            if selectedTitle == "NO, THANKS" { //selectedButtonTitle
            }
            appBanner.dismissBanner()
            self.showSimpleAlert("\(selectedTitle) Button Clicked")
        }
        
        appBanner.addAction(GLInAppAction(title: "10", subTitle: "Boosts", price: "₹155.00/ea", handler: { (actin) in
            print("Completion handler called \(actin.actionSubTitle!) For \(actin.actionPrice!)")
        }))
        
        appBanner.addAction(GLInAppAction(title: "5", subTitle: "Boosts", price: "₹184.00/ea", handler: { (action) in
            print("Completion handler called \(action.actionSubTitle!) For \(action.actionPrice!)")
        }))
        
        appBanner.addAction(GLInAppAction(title: "1", subTitle: "Boosts", price: "₹250.00/ea", handler: { (action) in
            print("Completion handler called \(action.actionSubTitle!) For \(action.actionPrice!)")
        }))
        
        appBanner.presentBanner()
    }
    
    func demo2() {
        let appBanner = GLInAppPurchaseUI(title: "Skip The Line", subTitle: "Be first in the queue", footerText: footerText(), link: "http://yourdomain.com/term", bannerBackGroundStyle: .transparentStyle)
        
        appBanner.displayContent(imageSetWithDescription:
            [
                UIImage(named:"IMG_1")!:"Rewind Your Last Swipe##Go back and swipe again",
                UIImage(named:"IMG_2")!:"",
                UIImage(named:"IMG_3")!:"Send More Super Likes##Let them know you are interested",
            ])
        appBanner.addButtonWith("BOOST ME", cancelTitle: "NO, THANKS") { (selectedTitle, isOptionSelected, selectedAction) in
            if isOptionSelected {  //Some Option have been selected
                print("Selected Price \(selectedAction.actionPrice!)")
            }
            if selectedTitle == "NO, THANKS" { //selectedButtonTitle
            }
            appBanner.dismissBanner()
             self.showSimpleAlert("\(selectedTitle) Button Clicked")
        }
        
        
        appBanner.setBannerTheme([UIColor.white], headerTextColor: UIColor.black)
        appBanner.setButtomTheme([UIColor.blue,UIColor(netHex:0x2375F8)], buttonTextColor: UIColor.white)
        
        
        appBanner.presentBanner()
    }
    
    func demo3() {
        let appBanner = GLInAppPurchaseUI(title: "Skip The Line", subTitle: "Be first in the queue", footerText: NSAttributedString.init(string: ""), link: "", bannerBackGroundStyle: .transparentStyle)
        
        
        appBanner.addButtonWith("BOOST ME", cancelTitle: "NO, THANKS") { (selectedTitle, isOptionSelected, selectedAction) in
            if selectedTitle == "NO, THANKS" { //selectedButtonTitle
            }
            appBanner.dismissBanner()
            self.showSimpleAlert("\(selectedTitle) Button Clicked")
        }
        
        
        appBanner.setBannerTheme([UIColor.white], headerTextColor: UIColor.black)
        appBanner.setButtomTheme([UIColor.blue,UIColor(netHex:0x2375F8)], buttonTextColor: UIColor.white)
        
        appBanner.presentBanner()
    }
    
    func demo4() {
        let appBanner = GLInAppPurchaseUI(title: "Demo 4", subTitle: "Be first in the queue", footerText: footerText(), link: "http://yourdomain.com/term", bannerBackGroundStyle: .transparentStyle)
        
        appBanner.displayContent(imageSetWithDescription:
            [
                UIImage(named:"IMG_1")!:"Rewind Your Last Swipe##Go back and swipe again",
                UIImage(named:"IMG_2")!:"",
                UIImage(named:"IMG_3")!:"Send More Super Likes##Let them know you are interested",
            ])
        appBanner.addButtonWith("BOOST ME", cancelTitle: "NO, THANKS") { (selectedTitle, isOptionSelected, selectedAction) in
            if isOptionSelected {  //Some Option have been selected
                print("Selected Price \(selectedAction.actionPrice!)")
            }
            if selectedTitle == "NO, THANKS" { //selectedButtonTitle
            }
            appBanner.dismissBanner()
            self.showSimpleAlert("\(selectedTitle) Button Clicked")
        }
        
        appBanner.setBannerTheme([UIColor.white], headerTextColor: UIColor.black)
        appBanner.setButtomTheme([UIColor.blue,UIColor(netHex:0x2375F8)], buttonTextColor: UIColor.white)
        
        appBanner.addAction(GLInAppAction(title: "10", subTitle: "Boosts", price: "₹155.00/ea", handler: { (actin) in
            print("Completion handler called \(actin.actionSubTitle!) For \(actin.actionPrice!)")
        }))
        
        appBanner.addAction(GLInAppAction(title: "5", subTitle: "Boosts", price: "₹184.00/ea", handler: { (action) in
            print("Completion handler called \(action.actionSubTitle!) For \(action.actionPrice!)")
        }))
        
        appBanner.addAction(GLInAppAction(title: "1", subTitle: "Boosts", price: "₹250.00/ea", handler: { (action) in
            print("Completion handler called \(action.actionSubTitle!) For \(action.actionPrice!)")
        }))
        appBanner.addAction(GLInAppAction(title: "6", subTitle: "Boosts", price: "₹184.00/ea", handler: { (action) in
            print("Completion handler called \(action.actionSubTitle!) For \(action.actionPrice!)")
        }))
        appBanner.addAction(GLInAppAction(title: "7", subTitle: "Boosts", price: "₹250.00/ea", handler: { (action) in
            print("Completion handler called \(action.actionSubTitle!) For \(action.actionPrice!)")
        }))
        
        
        appBanner.presentBanner()
    }
    
    // MARK: Helpers
    
    func footerText() -> NSAttributedString {
        let mainString: NSMutableAttributedString = NSMutableAttributedString();
        
        let str1: NSMutableAttributedString = NSMutableAttributedString(string: "Recurring billing. Cancel any time.\n");
        str1.addAttribute(NSForegroundColorAttributeName, value: UIColor.white, range: NSMakeRange(0, str1.length));
        let fonts1: UIFont? = UIFont.boldSystemFont(ofSize: 12)
        str1.addAttribute(NSFontAttributeName, value: fonts1!, range: NSMakeRange(0, str1.length));

        let str2: NSMutableAttributedString = NSMutableAttributedString(string: "If you choose to purchase a subscription, payment will be chared to your iTunes account, and your account wil be charged within 24 hours pior to the end of the current period. Auto-renewal may be turned off at any time by going to your settings in the iTunes store after purchase. For more information, please visit our");
        str2.addAttribute(NSForegroundColorAttributeName, value: UIColor.white, range: NSMakeRange(0, str2.length));
        let fonts2: UIFont? = UIFont.systemFont(ofSize: 12)
        str2.addAttribute(NSFontAttributeName, value: fonts2!, range: NSMakeRange(0, str2.length));
        
        let str3: NSMutableAttributedString = NSMutableAttributedString(string: " Term of Service and Privacy Policy.");
        str3.addAttribute(NSForegroundColorAttributeName, value: UIColor.lightGray, range: NSMakeRange(0, str3.length));
        let fonts3: UIFont? = UIFont.systemFont(ofSize: 12)
        str3.addAttribute(NSFontAttributeName, value: fonts3!, range: NSMakeRange(0, str3.length));

        mainString.append(str1)
        mainString.append(str2)
        mainString.append(str3)
        
        return mainString
    }
    
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}
