//
//  ViewController.m
//  Daysquare
//
//  Created by 杨弘宇 on 16/6/7.
//  Copyright © 2016年 Cyandev. All rights reserved.
//

#import "ViewController.h"
#import "Classes/Daysquare.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet DAYCalendarView *calendarView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.calendarView addTarget:self action:@selector(calendarViewDidChange:) forControlEvents:UIControlEventValueChanged];
    self.calendarView.boldPrimaryComponentText = NO;
    self.calendarView.selectedIndicatorColor = [UIColor orangeColor];
    self.calendarView.localizedStringsOfWeekday = @[@"M",@"T",@"W",@"T",@"F",@"S",@"S"];
    self.calendarView.localizedStringsOfMonths = @[@"Januar", @"Februar", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December"];

    self.calendarView.monthFont = [UIFont fontWithName:@"Avenir-Black" size:10.0];
    self.calendarView.weekdayFont = [UIFont fontWithName:@"Avenir-Black" size:10.0];
    self.calendarView.monthFont = [UIFont fontWithName:@"Avenir-Black" size:12.0];
    self.calendarView.dayFont = [UIFont fontWithName:@"Avenir-Black" size:15.0];
    
    [self.calendarView reloadViewAnimated:NO];
}

#pragma mark -


- (void)calendarViewDidChange:(id)sender {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"YYYY-MM-dd";
    NSLog(@"%@", [formatter stringFromDate:self.calendarView.selectedDate]);
}


@end
