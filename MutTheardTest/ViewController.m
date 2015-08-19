//
//  ViewController.m
//  MutTheardTest
//
//  Created by syr on 15/8/19.
//  Copyright (c) 2015年 syr. All rights reserved.
//

#import "ViewController.h"
#import "YPNCornerImageView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet YPNCornerImageView *theImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.theImageView.cornerRadius = 50;
    self.theImageView.image = [UIImage imageNamed:@"ym.JPG"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
