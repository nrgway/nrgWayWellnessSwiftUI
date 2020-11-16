//
//  SceneDelegate.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/14/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import UIKit
import SwiftUI

class UserSettings: ObservableObject {
    
    @Published var loggedIn : Bool = false
}

class UserOnboard: ObservableObject {
    
    @Published var onboardComplete : Bool = false
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    //
    var systemEventsHandler: SystemEventsHandler?


   func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
         
    
    
    // ==========
//                let contentView = StartOnboardView()
//                let onboard = UserOnboard()
//                if let windowScene = scene as? UIWindowScene {
//                    let window = UIWindow(windowScene: windowScene)
//                    window.rootViewController = UIHostingController(rootView: contentView.environmentObject(onboard))
//                    self.window = window
//                    window.makeKeyAndVisible()
//                }
                
                // ==========
    let environment = AppEnvironment.bootstrap()
    let contentView = CountryContentView(container: environment.container)
    if let windowScene = scene as? UIWindowScene {
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = UIHostingController(rootView: contentView)
        self.window = window
        window.makeKeyAndVisible()
    }
    self.systemEventsHandler = environment.systemEventsHandler

    
    
    
    
    
    }

    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        systemEventsHandler?.sceneOpenURLContexts(URLContexts)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        systemEventsHandler?.sceneDidBecomeActive()
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        systemEventsHandler?.sceneWillResignActive()
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}

struct StartView: View {
    
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
                
        if settings.loggedIn {
            //return AnyView(TabbarVC())
            return AnyView(MainTabView())
        } else {
            return AnyView(LoginView())
        }
    }
}

struct StartOnboardView: View {
    
    @EnvironmentObject var userOnboard: UserOnboard
    
    var body: some View {
        
        let contentView = StartView()
        let settings = UserSettings()
                
        if userOnboard.onboardComplete {
            return AnyView(contentView.environmentObject(settings))
        } else {
            if UserDefaults.standard.bool(forKey: "Loggedin") {
                settings.loggedIn = true
                //return AnyView(TabbarVC())
                return AnyView(OnboardingView())
            } else {
                settings.loggedIn = false
                return AnyView(OnboardingView())
            }
        }
    }
}

struct StartViewUsingPropertyWrappers: View {
    
    @EnvironmentObject var dataStore: DataStore
    
    var body: some View {
                
        if dataStore.login {
            //return AnyView(TabbarVC())
            return AnyView(LoginView())
        } else {
            return AnyView(LoginView())
        }
    }
}

struct StartOnboard: View {
    
    @EnvironmentObject var dataOnboard: DataOnboarding
    
    var body: some View {
        
        let contentView = StartViewUsingPropertyWrappers()
        let dataStore = DataStore()
        
        if dataOnboard.onboard {
            return AnyView(contentView.environmentObject(dataStore))
        } else {
            return AnyView(OnboardingView())
        }
    }
}


struct SceneDelegate_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
