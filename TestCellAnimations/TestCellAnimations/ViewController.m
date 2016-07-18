//
//  ViewController.m
//  TestCellAnimations
//
//  Created by Andrey Manov on 18/07/16.
//  Copyright © 2016 Andrey Manov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UITableViewController* tableViewController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"EmbedSegue"]) {
        self.tableViewController = segue.destinationViewController;
    }
}

@end
