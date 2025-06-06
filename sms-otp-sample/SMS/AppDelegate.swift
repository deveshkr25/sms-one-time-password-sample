/**
 *    © Copyright 2016 IBM Corp.
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */

//
//  AppDelegate.swift
//  UserLoginSample
//
//  Created by Ishai Borovoy on 03/11/2015.
//  Copyright © 2015 IBM. All rights reserved.
//

import UIKit
import IBMMobileFirstPlatformFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        WLClient.sharedInstance().registerChallengeHandler(SMSCodeChallengeHandler(securityCheck: SMSCodeChallengeHandler.securityCheck))
        return true
    }
}

