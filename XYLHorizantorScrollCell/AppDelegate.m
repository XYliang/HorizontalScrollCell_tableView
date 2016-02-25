//
//  AppDelegate.m
//  XYLHorizantorScrollCell
//
//  Created by 薛银亮 on 16/2/24.
//  Copyright © 2016年 薛银亮. All rights reserved.
//

#import "AppDelegate.h"
#import "XYLHoriantorScrollController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    XYLHoriantorScrollController *rootController = [[XYLHoriantorScrollController alloc]init];
    self.window.rootViewController = rootController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
