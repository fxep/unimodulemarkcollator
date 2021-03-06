//
//  AppDelegate.m
//  GradesforYear2
//
//  Created by Fasih Qureshi on 08/12/2017.
//
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    YALFoldingTabBarController *tabBarController = (YALFoldingTabBarController *) self.window.rootViewController;
    
    //prepare leftBarItems
    YALTabBarItem *item1 = [[YALTabBarItem alloc] initWithItemImage:[UIImage imageNamed:@"album-simple-7.png"] // initial image identifier
                                                      leftItemImage:[UIImage imageNamed:@"pencil-7.png"] // shen user clicks on initial item
                                                     rightItemImage:nil];
    
    
    YALTabBarItem *item2 = [[YALTabBarItem alloc] initWithItemImage: [UIImage imageNamed:@"book-cover-star-7.png"]
                                                      leftItemImage: [UIImage imageNamed:@"pencil-7.png"] // shen user clicks on initial item
                                                     rightItemImage:nil];

                                                  
    
    tabBarController.leftBarItems = @[item1, item2];
    
    
    
    //prepare rightBarItems
    
    
    /*
    YALTabBarItem *item3 = [[YALTabBarItem alloc] initWithItemImage:nil
                                                      leftItemImage:nil
                                                     rightItemImage:nil];
    
    YALTabBarItem *item4 = [[YALTabBarItem alloc] initWithItemImage:nil
                                                      leftItemImage:nil
                                                     rightItemImage:nil];

    tabBarController.rightBarItems = @[item3, item4];
     */
    
    tabBarController.tabBarView.extraTabBarItemHeight = YALExtraTabBarItemsDefaultHeight; // extra details 
    tabBarController.tabBarView.offsetForExtraTabBarItems = YALForExtraTabBarItemsDefaultOffset;
    tabBarController.tabBarView.backgroundColor = [UIColor colorWithRed:94.f/255.f green:91.f/255.f blue:149.f/255.f alpha:1.f];
    tabBarController.tabBarView.tabBarColor = [UIColor colorWithRed:72.f/255.f green:211.f/255.f blue:178.f/255.f alpha:1.f];
    tabBarController.tabBarViewHeight = YALTabBarViewDefaultHeight;
    tabBarController.tabBarView.tabBarViewEdgeInsets = YALTabBarViewHDefaultEdgeInsets;
    tabBarController.tabBarView.tabBarItemsEdgeInsets = YALTabBarViewItemsDefaultEdgeInsets;
    
    return YES;

}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
