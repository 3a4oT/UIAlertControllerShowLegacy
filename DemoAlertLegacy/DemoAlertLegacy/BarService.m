//
//  BarService.m
//  DemoAlertLegacy
//
//  Created by Petro Rovenskyy on 1/8/17.
//  Copyright © 2017 Petro Rovenskyy. All rights reserved.
//

#import "BarService.h"
#import <UIKit/UIKit.h>
#import <UIAlertControllerShowLegacy/UIAlertControllerShowLegacy-Swift.h>


@implementation BarService

- (void)barRequest {
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:@"Test bar title"
										message:@"Test bar obj-c request"
								 preferredStyle:UIAlertControllerStyleAlert];
	
	UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
													   style:UIAlertActionStyleDefault
													 handler:nil];
	[alert addAction:okAction];
	
	[alert show];
}

@end
