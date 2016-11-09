//
//  DAYNavigationBar.h
//  Daysquare
//
//  Created by 杨弘宇 on 16/6/7.
//  Copyright © 2016年 Cyandev. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, DAYNaviagationBarCommand) {
    DAYNaviagationBarCommandNoCommand = 0,
    DAYNaviagationBarCommandPrevious,
    DAYNaviagationBarCommandNext
};

@interface DAYNavigationBar : UIControl

@property (strong, nonatomic) UILabel *textLabel;
@property (strong, nonatomic) UIButton *prevButton;
@property (strong, nonatomic) UIButton *nextButton;

@property (readonly) DAYNaviagationBarCommand lastCommand;

@end
