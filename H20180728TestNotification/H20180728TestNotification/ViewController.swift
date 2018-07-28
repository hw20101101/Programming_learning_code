//
//  ViewController.swift
//  H20180728TestNotification
//
//  Created by hwacdx on 2018/7/28.
//  Copyright © 2018年 hwacdx. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    var isGrantedNotificationAccess = false
    
    @IBAction func send10SecNotification(_ sender: Any) {
        
        //已开启通知权限
        if isGrantedNotificationAccess{
            
            //Set the content of the notification
            let content = UNMutableNotificationContent()
            content.title = "10 second notification demo"
            content.subtitle = "From MakeAppie.com"
            content.body = "Notification after 10 seconds - Your pizza is Ready!!"
            content.categoryIdentifier = "message"
            
            //Set the trigger of the notification -- here a timer.
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10.0, repeats: false)
            
            //Set the request for the notification from the above
            let request = UNNotificationRequest.init(identifier: "10.second.message", content: content, trigger: trigger)
            
            //Add the notification to the currnet notification center
            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
            UNUserNotificationCenter.current().delegate = self
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //检查通知权限
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            self.isGrantedNotificationAccess = granted
        }
    }
}

extension ViewController: UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //通知被点击时调用
        print("-->> 通知被点击了")
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        print("-->> second")
    }
}

