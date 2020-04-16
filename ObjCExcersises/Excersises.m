//
//  Excersises.m
//  ObjCExcersises
//
//  Created by Hugo Flores Perez on 4/16/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

#import "Excersises.h"

@implementation Excersises
- (void)excersiseOne {
    __block NSInteger position = -1;
    NSString *toSearch = @"Red";
    NSArray *names = [NSArray arrayWithObjects: @"Red", @"Green", @"Blue", @"Yellow", nil];
    [names enumerateObjectsUsingBlock:^(NSString *str, NSUInteger idx, BOOL *stop) {
        if (str == toSearch) {
            position = (int)idx;
            *stop = YES;
        }
    }];
    NSLog(@"Position of %@: %ld", toSearch, (long)position);
}

- (void)excersiseTwo {
    [self weird:^(void){}];
}

- (void(^)(void)) weird: (void(^)(void)) input {
    return (^(void){});
}

- (void)excersiseThree {
    NSLog(@"Sum: %f", [self getOperationBlock:@"+"](3, 2));
    NSLog(@"Sub: %f", [self getOperationBlock:@"-"](3, 2));
    NSLog(@"Mult: %f", [self getOperationBlock:@"*"](3, 2));
    NSLog(@"Div: %f", [self getOperationBlock:@"/"](3, 2));
}

- (double(^)(double, double)) getOperationBlock: (NSString *) input {
    if ([input  isEqual: @"+"]) {
        return (^(double a, double b){ return a + b; });
    }
    if ([input  isEqual: @"-"]) {
        return (^(double a, double b){ return a - b; });
    }
    if ([input  isEqual: @"*"]) {
        return (^(double a, double b){ return a * b; });
    }
    if ([input  isEqual: @"/"]) {
        return (^(double a, double b){ return a / b; });
    }
    return (^(double a, double b){ return 0.0; });
}

- (void)excersiseFour {
    int numbers[5];
    NSLog(@"Array before");
    for (int i = 0; i < 5; i++) {
        numbers[i] = i;
        NSLog(@"%d", numbers[i]);
    }

    func(numbers, 5, ^(int a){ return a * 3; });
    
    NSLog(@"Array after");
    for (int i = 0; i < 5; i++) {
        numbers[i] = i;
        NSLog(@"%d", numbers[i]);
    }
}

typedef int(^iblock_t)(int);
 
void func(int arr[], int size, iblock_t formula) {
   for ( int i = 0; i < size; i++ ) {
       arr[i] = formula(arr[i]);
       NSLog(@"Here: %d", arr[i]);
   }
}


@end
