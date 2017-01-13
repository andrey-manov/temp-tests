//
//  DetailViewController.h
//  CoordinatorsTempTest
//
//  Created by Andrey Manov on 09/12/2016.
//  Copyright © 2016 Andrey Manov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

