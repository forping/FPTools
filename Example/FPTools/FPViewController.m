//
//  FPViewController.m
//  FPTools
//
//  Created by aiyanbo on 12/28/2020.
//  Copyright (c) 2020 aiyanbo. All rights reserved.
//

#import "FPViewController.h"
#import <FPTools/FPTools.h>

@interface FPViewController ()

@end

@implementation FPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
   double timer = fp_performAndTrackTime(^{
       
        for (NSInteger i = 0; i<10000; i++) {
            NSLog(@"%ld",i);
        }
        
    });
    NSLog(@"运行时间 %f 秒",timer/NSEC_PER_SEC);
    NSLog(@"运行时间 %f 豪秒",timer/NSEC_PER_MSEC);
    NSLog(@"运行时间  %f  豪秒", timer/1E6);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
