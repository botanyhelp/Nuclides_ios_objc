//
//  NuclideDataController.h
//  Nuclides
//
//  Created by Tom Maher on 2/5/14.
//  Copyright (c) 2014 Tom Maher. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Nuclides;

@interface NuclideDataController : NSObject

-(NSUInteger) nuclideCount;
-(Nuclides *)nuclideAtIndex:(NSUInteger)index;

-(void) addNuclideWithNuclide:(NSString *)element nuclide:(NSString *)nuclide;

@end
