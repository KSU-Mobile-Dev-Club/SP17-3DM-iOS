//
//  AppDelegate.swift
//  3DM
//
//  Created by Ashley Coleman on 2/16/17.
//  Copyright © 2017 Ashley Coleman. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
        return true
    }
    
    private func initParse(){
        let secrets = getSecrets()
        // Override point for customization after application launch.
        let config = ParseClientConfiguration(block: {
            (ParseMutableClientConfiguration) -> Void in
            
            ParseMutableClientConfiguration.applicationId = secrets.1;
            //ParseMutableClientConfiguration.clientKey = "xhDXegJowYtDtsCRRkdjRnQgdzbeChRujcyMtxHv";
            ParseMutableClientConfiguration.server = secrets.0;
        });
        
        Parse.initialize(with: config);
        
        
    }
    
    private func getSecrets() -> (String, String) {
        if let fileUrl = Bundle.main.url(forResource: "secrets", withExtension: "plist"),
            let data = try? Data(contentsOf: fileUrl) {
            if let result = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [String: Any] {
                guard let server = result?["server"] as? String else {
                    print("server not found in secrets")
                    return ("", "")
                }
                
                guard let applicationId = result?["applicationId"] as? String else {
                    print("server not found in secrets")
                    return ("", "")
                }
                
                return (server, applicationId)
            }
        }
        
        print("secrets.plist not found.")
        return ("", "")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

