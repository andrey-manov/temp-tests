//
//  Coordinator.m
//  CoordinatorsTempTest
//
//  Created by Andrey Manov on 09/12/2016.
//  Copyright © 2016 Andrey Manov. All rights reserved.
//

#import "AppCoordinator.h"
#import "AuthCoordinator.h"

@interface AppCoordinator ()

@property (weak, nonatomic) UINavigationController* navigationController;
@property (strong, nonatomic) NSMutableArray* childCoordinators;

@property (assign, nonatomic) BOOL loggedIn;

@end

@implementation AppCoordinator

- (instancetype)initWithNavController:(UINavigationController*)navContr
{
    self = [super init];
    if (self) {
        _navigationController = navContr;
        _childCoordinators = [NSMutableArray new];
        _loggedIn = NO;
    }
    return self;
}

- (void)start {
    if ([self isLoggedIn]) {
        [self showContent];
    } else {
        [self showAuthentication];
    }
}

- (BOOL)isLoggedIn {
    return _loggedIn;
}

- (void)showContent {
    
}

- (void)showAuthentication {
    
    AuthCoordinator* authCoordinator = [[AuthCoordinator alloc] initWithNavController:self.navigationController];
    authCoordinator.delegate = self;
    [authCoordinator start];
    [self.childCoordinators addObject:authCoordinator];
}

#pragma mark - AuthCoordinatorDelegate

- (void)coordinatorDidAuth:(AuthCoordinator *)coordinator {
    [self.childCoordinators removeObject:coordinator];
    [self showContent];
}

@end
