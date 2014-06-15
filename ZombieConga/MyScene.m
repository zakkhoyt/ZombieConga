//
//  MyScene.m
//  ZombieConga
//
//  Created by Zakk Hoyt on 6/14/14.
//  Copyright (c) 2014 Zakk Hoyt. All rights reserved.
//

#import "MyScene.h"

@interface MyScene (){
    SKSpriteNode *_zombie;
    SKNode *node;
}

@end
@implementation MyScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        self.backgroundColor = [SKColor whiteColor];
        SKSpriteNode *bg = [SKSpriteNode spriteNodeWithImageNamed:@"background"];
        [self addChild:bg];
        
        CGSize mySize = bg.size;
        NSLog(@"Size: %@", NSStringFromCGSize(mySize));
        
        
////        bg.position = CGPointMake(self.size.width/2, self.size.height/2);
//        bg.anchorPoint = CGPointZero;
//        bg.position = CGPointZero;
        bg.position = CGPointMake(self.size.width / 2, self.size.height / 2);
//        bg.anchorPoint = CGPointMake(0.5, 0.5); // same as default
//        bg.zRotation = M_PI / 8;
        
        
        SKSpriteNode *zombie = [SKSpriteNode spriteNodeWithImageNamed:@"zombie1"];
        zombie.position = CGPointMake(100, 100);
        zombie.xScale = 2.0;
        zombie.yScale = 2.0;
        [self addChild:zombie];
    }
    return self;
}

@end
