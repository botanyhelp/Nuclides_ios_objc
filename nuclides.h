//
//  Nuclides.h
//  Nuclides
//
//  Created by Tom Maher on 2/5/14.
//  Copyright (c) 2014 Tom Maher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Nuclides : NSObject
@property (nonatomic, copy) NSString *element;
@property (nonatomic, copy) NSString *nuclide;

-(id) initWithNuclide:(NSString *)element nuclide:(NSString *)nuclide;

@end
