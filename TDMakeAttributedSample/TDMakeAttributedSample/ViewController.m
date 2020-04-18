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
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *centerLabel3;

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
        attr.inRange(NSMakeRange(2, 4)).foregroundColor([UIColor systemPinkColor]).font([UIFont systemFontOfSize:14.0f]);
    }];
    self.centerLabel2.attributedText = attributedString2;
    
    NSAttributedString *attributedString3 = [@"Sample3" td_makeAttributed:^(TDMAttribute * _Nonnull attr) {
        attr.strikethroughStyle(NSUnderlineStyleSingle).strikethroughColor([UIColor systemPurpleColor]);
    }];
    self.centerLabel3.attributedText = attributedString3;
    
    NSAttributedString *attributedString4 = [@"人类每次正视自己的渺小，都是自身的一次巨大进步。" td_makeAttributed:^(TDMAttribute * _Nonnull attr) {
        attr.inRange(NSMakeRange(0, 2)).foregroundColor([UIColor systemTealColor]).font([UIFont systemFontOfSize:24.0f]).hyperLink([NSURL URLWithString:@"www.baidu.com"]);
        attr.inRange(NSMakeRange(2, 4)).foregroundColor([UIColor systemPinkColor]).font([UIFont systemFontOfSize:14.0f]);
        attr.inRange(NSMakeRange(9, 2)).backgroundColor([UIColor systemFillColor]).font([UIFont systemFontOfSize:16.f]);
        attr.inRange(NSMakeRange(15, 3)).strokeWidth(2.f).strokeColor([UIColor systemBlueColor]);
        attr.inRange(NSMakeRange(12, 8)).underlineColor([UIColor systemYellowColor]).underlineStyle(NSUnderlineStyleSingle);

       }];
    self.topLabel.attributedText = attributedString4;
    self.topLabel.numberOfLines = 0;
}


@end
