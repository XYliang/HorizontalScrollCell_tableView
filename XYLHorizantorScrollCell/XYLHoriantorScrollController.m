//
//  XYLHoriantorScrollController.m
//  XYLHorizantorScrollCell
//
//  Created by 薛银亮 on 16/2/24.
//  Copyright © 2016年 薛银亮. All rights reserved.
//

#import "XYLHoriantorScrollController.h"
#import "XYLHorizantorScrollCell.h"
#import "XYLProductObject.h"
#import "XYLProductObjectFrame.h"

@interface XYLHoriantorScrollController()
@property (nonatomic, strong) NSArray *productFrameArray;

@end
@implementation XYLHoriantorScrollController



-(NSArray *)productFrameArray
{
     if (_productFrameArray == nil) {
         NSString *fullPath = [[NSBundle mainBundle] pathForResource:@"Products" ofType:@"plist"];
         NSArray *dictArray = [NSArray arrayWithContentsOfFile:fullPath];
         NSMutableArray *productArray = [NSMutableArray arrayWithCapacity:dictArray.count];
         for (NSDictionary *dict in dictArray) {
             XYLProductObject *product = [XYLProductObject productWithDict:dict];
             XYLProductObjectFrame *productFrame = [[XYLProductObjectFrame alloc]init];
             productFrame.product = product;
             [productArray addObject:productFrame];
         }

        _productFrameArray = [productArray copy];
     }
     return _productFrameArray;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XYLHorizantorScrollCell *cell = [XYLHorizantorScrollCell cellWithTableView:tableView];
    cell.dataArray = self.productFrameArray;
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  200;
}
@end
