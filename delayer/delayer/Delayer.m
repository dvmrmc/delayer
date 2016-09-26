//
//  delayer.m
//  delayer
//
//  Created by David Martin on 26/09/2016.
//  Copyright © 2016 codingbehind. All rights reserved.
//

#import "Delayer.h"

@interface Delayer ()

@property(nonatomic, weak)NSObject<DelayerDelegate> *delegate;

@end

@implementation Delayer

+ (instancetype)sharedDelayer
{
    static Delayer *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[Delayer alloc] init];
    });
    return instance;
}

+ (void)delayCallbackWithTime:(NSTimeInterval)seconds andDelegate:(NSObject<DelayerDelegate>*)delegate
{
    if(delegate == nil) {
        
        NSLog(@"Delayer - delegate is nil or empty and required, dropping this all");
    } else {
        
        [Delayer sharedDelayer].delegate = delegate;
        [[Delayer sharedDelayer] performSelector:@selector(invokeDelayDidFinish)
                                      withObject:nil
                                      afterDelay:seconds];
    }
}

- (void)invokeDelayDidFinish
{
    if(self.delegate && [self.delegate respondsToSelector:@selector(delayDidFinish)]) {
        [self.delegate delayDidFinish];
    }
}

@end
