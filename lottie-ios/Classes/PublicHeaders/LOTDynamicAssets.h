//
//  LOTDynamicAssets.h
//  Lottie
//
//  Created by Paweł Wojtkowiak on 19.06.2018.
//  Copyright © 2018 Airbnb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LOTDynamicAssets : NSObject

@property (nonatomic, strong) NSMutableDictionary<NSString *, UIImage *> *imageAssets;

+ (instancetype)sharedInstance;

- (UIImage *)getImageAssetNamed:(NSString *)imageName;

@end
