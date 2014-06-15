//
//  ViewController.m
//  ZombieConga
//
//  Created by Zakk Hoyt on 6/14/14.
//  Copyright (c) 2014 Zakk Hoyt. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"
@import SpriteKit;


@interface ViewController ()
@property (strong, nonatomic) SKView *skView;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.skView = [[SKView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:self.skView];
    self.skView.showsDrawCount = YES;
    self.skView.showsNodeCount = YES;
    self.skView.showsFPS = YES;
    self.skView.showsPhysics = YES;
}


-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    
    if (!self.skView.scene) {
        self.skView.showsFPS = YES;
        self.skView.showsNodeCount = YES;
        // Create and configure the scene.
        SKScene * scene = [MyScene sceneWithSize:self.skView.bounds.size];
        scene.scaleMode = SKSceneScaleModeAspectFill;
        // Present the scene.
        [self.skView presentScene:scene];
    }
}

-(BOOL)prefersStatusBarHidden {
    return YES;
}
@end
