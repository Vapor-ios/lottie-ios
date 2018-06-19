//
//  LOTDynamicAssets.m
//  Lottie
//
//  Created by Paweł Wojtkowiak on 19.06.2018.
//  Copyright © 2018 Airbnb. All rights reserved.
//

#import "LOTDynamicAssets.h"

@implementation LOTDynamicAssets

+ (instancetype)sharedInstance {
    static LOTDynamicAssets *inst = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        inst = [[self alloc] init];
    });
    return inst;
}

- (instancetype)init {
    if (self = [super init]) {
        _imageAssets = [NSMutableDictionary new];
    }
    return self;
}

- (UIImage *)getImageAssetNamed:(NSString *)imageName {
    if (imageName == nil) { return nil; }
    return _imageAssets[imageName];
}

@end
