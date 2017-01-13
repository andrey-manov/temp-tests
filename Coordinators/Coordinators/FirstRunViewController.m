//
//  FirstRunViewController.m
//  CoordinatorsTempTest
//
//  Created by Andrey Manov on 09/12/2016.
//  Copyright © 2016 Andrey Manov. All rights reserved.
//

#import "FirstRunViewController.h"

@interface FirstRunViewController ()

@end

@implementation FirstRunViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)loginBtnPressed:(id)sender {
    
    [self.delegate loginButtonPressed];
}

@end
