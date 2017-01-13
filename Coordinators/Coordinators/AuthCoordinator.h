//
//  AuthCoordinator.h
//  CoordinatorsTempTest
//
//  Created by Andrey Manov on 09/12/2016.
//  Copyright © 2016 Andrey Manov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "FirstRunViewController.h"

@class AuthCoordinator;

@protocol AuthCoordinatorDelegate <NSObject>

- (void)coordinatorDidAuth:(AuthCoordinator*)coordinator;

@end

@interface AuthCoordinator : NSObject <FirstRunViewControllerDelegate>

@property (nonatomic, weak) id<AuthCoordinatorDelegate> delegate;

- (instancetype)initWithNavController:(UINavigationController*)navContr;
- (void)start;

@end
