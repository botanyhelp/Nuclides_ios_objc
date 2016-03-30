//
//  Nuclides.m
//  Nuclides
//
//  Created by Tom Maher on 2/5/14.
//  Copyright (c) 2014 Tom Maher. All rights reserved.
//

#import "Nuclides.h"

@implementation Nuclides

-(id) initWithNuclide:(NSString *)element nuclide:(NSString *)nuclide {
    self = [super init];
    if (self) {
        _element = element;
        _nuclide = nuclide;
        
        return self;
    }
    return nil;
}


@end
