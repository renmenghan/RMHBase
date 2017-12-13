//
//  ResponseModel.h
//  RMHBase_Example
//
//  Created by 任梦晗 on 2017/12/13.
//  Copyright © 2017年 renmenghan. All rights reserved.
//

#import "BaseModel.h"
#import "StatusModel.h"

@interface ResponseModel : BaseModel
@property (nonatomic,strong) StatusModel *status;
@property (nonatomic,strong) NSDictionary<Optional> *result;
@end
