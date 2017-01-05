//
//  ViewController.swift
//  NewNotifications
//
//  Created by Ilie, Stefan on 1/5/17.
//  Copyright © 2017 Ilie, Stefan. All rights reserved.
//

import UIKit
import UserNotifications
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //request permissions
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {(granted, error) in
            if granted {
                print("Notification access granted");
            } else {
                print(error?.localizedDescription);
            }
        })
    }
    
    @IBAction func notifyButtonTapped(sender: UIButton){
        scheduleNotification(inSeconds: 5, completion: { success in
            if success {
                print("Successfully scheduled notification")
            } else {
                print("Error scheduling notification");
            }
        })
    }
    
    func scheduleNotification(inSeconds: TimeInterval, completion: @escaping (_ Success: Bool) -> ()){
        
        //Add an attachment
        let myImage = "rick_grimes"
        guard let imageUrl = Bundle.main.url(forResource: myImage, withExtension: "gif") else {
            completion(false)
            return
        }
        
        var attachment: UNNotificationAttachment
        
        attachment = try! UNNotificationAttachment(identifier: "myNotification", url: imageUrl, options: .none);
        
        let notif = UNMutableNotificationContent();
        
        notif.title = "New notification"
        notif.subtitle = "These are great!"
        notif.body = "The new notification options in iOS 10 are what I've always dreamed of!"
        
        notif.attachments = [attachment];
        
        let notificationTrigger = UNTimeIntervalNotificationTrigger(timeInterval: inSeconds, repeats: false);
        
        let request = UNNotificationRequest(identifier: "myNotification", content: notif, trigger: notificationTrigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: {error in
            if error != nil {
                print(error)
                completion(false);
            } else {
                completion(true);
            }
        
        })
    }
}











