//
//  ViewController.m
//  DZ 24 Skutar Drawings
//
//  Created by mac on 01.04.17.
//  Copyright © 2017 Dima Zgera. All rights reserved.
//

#import "ViewController.h"
#import "ZDDrawingView.h"

@interface ViewController ()

@property (assign, nonatomic) UIView* drawing;
//@property (assign, nonatomic) UIView* drawingView;

@end

@implementation ViewController


#pragma mark - loading

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIPanGestureRecognizer* panView = [[UIPanGestureRecognizer alloc]
                                       initWithTarget:self
                                       action:@selector(handlePan:)];
    [self.view addGestureRecognizer:panView];
    
    
}

#pragma mark - HelpedMethods

-(void)handlePan:(UIPanGestureRecognizer *)handlePan
{
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake([handlePan locationInView:self.drawingView].x,
                                                           [handlePan locationInView:self.drawingView].y, 10, 10)];
    
    view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view];
    self.drawing = view;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Orientations
-(UIInterfaceOrientationMask) supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

-(void) viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [self.drawingView setNeedsDisplay];
}

@end
