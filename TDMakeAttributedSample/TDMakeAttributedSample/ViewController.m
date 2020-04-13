//
//  ViewController.m
//  TDMakeAttributedSample
//
//  Created by jojo on 2020/4/8.
//  Copyright © 2020 jojotov. All rights reserved.
//

#import "ViewController.h"
#import <TDMakeAttributed/TDMakeAttributed.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *centerLabel;
@property (weak, nonatomic) IBOutlet UILabel *centerLabel2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSAttributedString *attributedString = [@"Sample" td_makeAttributed:^(TDMAttribute * _Nonnull attr) {
        attr.foregroundColor([UIColor systemRedColor]).font([UIFont systemFontOfSize:24.0f]);
    }];
    
    self.centerLabel.attributedText = attributedString;
    
    NSAttributedString *attributedString2 = [@"Sample2" td_makeAttributed:^(TDMAttribute * _Nonnull attr) {
        attr.inRange(NSMakeRange(0, 3)).foregroundColor([UIColor systemBlueColor]).font([UIFont systemFontOfSize:24.0f]);
    }];
    
    self.centerLabel2.attributedText = attributedString2;
    
}


@end
