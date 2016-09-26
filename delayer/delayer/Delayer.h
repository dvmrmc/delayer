//
//  delayer.h
//  delayer
//
//  Created by David Martin on 26/09/2016.
//  Copyright © 2016 codingbehind. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DelayerDelegate <NSObject>

- (void)delayDidFinish;

@end

@interface Delayer : NSObject

+ (void)delayCallbackWithTime:(NSTimeInterval)seconds andDelegate:(NSObject<DelayerDelegate>*)delegate;

@end
