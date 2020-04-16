//
//  main.m
//  ObjCExcersises
//
//  Created by Hugo Flores Perez on 4/16/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Excersises.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    
    Excersises *obj = [Excersises alloc];
    
    [obj excersiseOne];
    [obj excersiseTwo];
    [obj excersiseThree];
    [obj excersiseFour];
    
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
