//
//  FirstRunViewController.h
//  CoordinatorsTempTest
//
//  Created by Andrey Manov on 09/12/2016.
//  Copyright © 2016 Andrey Manov. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FirstRunViewControllerDelegate <NSObject>

- (void)loginButtonPressed;

@end

@interface FirstRunViewController : UIViewController

@property (nonatomic, weak) id<FirstRunViewControllerDelegate> delegate;

@end
