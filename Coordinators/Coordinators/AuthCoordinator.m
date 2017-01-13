//
//  AuthCoordinator.m
//  CoordinatorsTempTest
//
//  Created by Andrey Manov on 09/12/2016.
//  Copyright © 2016 Andrey Manov. All rights reserved.
//

#import "AuthCoordinator.h"

@interface AuthCoordinator()

@property (nonatomic, weak) UINavigationController* navigationController;

@end

@implementation AuthCoordinator

- (instancetype)initWithNavController:(UINavigationController*)navContr
{
    self = [super init];
    if (self) {
        _navigationController = navContr;
    }
    return self;
}

- (void)start {

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    FirstRunViewController* firstRunVC = [storyboard instantiateViewControllerWithIdentifier:@"FirstRunViewController"];
    firstRunVC.delegate = self;
    
    [self.navigationController pushViewController:firstRunVC animated:NO];
}

#pragma mark - FirstRunViewControllerDelegate

- (void)loginButtonPressed {
    [self.navigationController popViewControllerAnimated:NO];
    [self.delegate coordinatorDidAuth:self];
}

@end
