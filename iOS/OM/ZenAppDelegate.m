//
//  ZenAppDelegate.m
//  OM
//
//  Created by Felipe on 3/11/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenAppDelegate.h"
#import "ZenBT.h"

@implementation ZenAppDelegate

+ (ZenAppDelegate*)shared;
{
    return (ZenAppDelegate*)[[UIApplication sharedApplication] delegate];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _iPad = ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad);
    
    // FETCH
    [[UIApplication sharedApplication] setMinimumBackgroundFetchInterval:UIApplicationBackgroundFetchIntervalMinimum];
    
    [[ZenBT sharedStore] startScanning];
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)application:(UIApplication *)application performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    
    /*FETCH:update ui
    [self.viewControllerForRefresh refreshWithCompletionHandler:^(BOOL didReceiveNewPosts) {
        
        if(didReceiveNewPosts)
            completionHandler(UIIBackgroundFetchResultNewData);
        else
            completionHandler(UIIBackgroundFetchResultNoData);
    }];
    */
}

/* FETCH:
 
header ViewController:
 
 typedef void (^CRefreshCompletionHandler) (BOOL didReceiveNewPosts);
 - (void) refreshWithCompletionHandler:(CRefreshCompletionHandler)completionHandler;
 
implementation:
 
- (void) refreshWithCompletionHandler:(CRefreshCompletionHandler)completionHandler
{
    [self fetchNewPostsWithCompletionHandler:completionHandler];
}

-(void) fetchNewPostsWithCompletionHandler:(CRefreshCompletionHandler)completionHandler
{
    if(completionHandler)
        completionHandler(posts? YES: NO);
}

 Test app launch in background (create a new scheme, duplicate existing and set Background Fetch Event Launch)
 Test app resume from background (Debug menu,
 
 */


- (void) application:(UIApplication *)application handleEventsForBackgroundURLSession:(NSString *)identifier completionHandler:(void (^)())completionHandler
{
    
}

@end
