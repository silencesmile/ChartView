//
//  ViewController.m
//  zhexian(折现)
//
//  Created by youngstar on 16/1/22.
//  Copyright © 2016年 杨铭星. All rights reserved.
//

#import "ViewController.h"
#import "UUChart.h"

@interface ViewController () <UUChartDataSource>
@property (nonatomic, strong) UUChart *chartView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self testOne];
}

- (void)testOne
{
    
  // 折线图
    _chartView  = [[UUChart alloc]initWithFrame:(CGRectMake(10, 30, 300, 150)) dataSource:self style:UUChartStyleLine];
    
    //  柱形图
//    _chartView  = [[UUChart alloc]initWithFrame:(CGRectMake(10, 30, 300, 150)) dataSource:self style:UUChartStyleBar];
    
    [_chartView showInView:self.view];
//    [_chartView strokeChart];
    
}

- (NSArray *)chartConfigAxisXLabel:(UUChart *)chart
{
    NSArray *xArray = @[@"1", @"2", @"3", @"4", @"5"];
    return xArray;
}

- (NSArray *)chartConfigAxisYValue:(UUChart *)chart
{
    NSArray *yArray = @[@"2", @"12", @"33", @"24", @"42"];
    NSArray *yArray2 = @[@"42", @"22", @"3", @"24", @"42"];
    return @[yArray,yArray2];
}

//颜色数组
- (NSArray *)chartConfigColors:(UUChart *)chart
{
    return @[[UUColor green], [UUColor redColor]];
}

- (BOOL)chart:(UUChart *)chart showHorizonLineAtIndex:(NSInteger)index
{
    return YES;
}

- (BOOL)chart:(UUChart *)chart showMaxMinAtIndex:(NSInteger)index
{
    return YES;
}


//显示数值范围
- (CGRange)chartRange:(UUChart *)chart
{
    return CGRangeMake(50, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
