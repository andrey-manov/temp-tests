//
//  Coordinator.h
//  CoordinatorsTempTest
//
//  Created by Andrey Manov on 09/12/2016.
//  Copyright © 2016 Andrey Manov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AuthCoordinator.h"

@interface AppCoordinator : NSObject <AuthCoordinatorDelegate>

- (instancetype)initWithNavController:(UINavigationController*)navContr;
- (void)start;

@end
