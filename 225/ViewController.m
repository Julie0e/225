//
//  ViewController.m
//  225
//
//  Created by SDT-1 on 2014. 1. 7..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    BOOL moveFlag;
}
@property (weak, nonatomic)IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (IBAction)series:(id)sender
{
    [UIView beginAnimations:@"series1" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1.0];
    // 델리게이트
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(changeBackgroundClear)];
    
    self.imageView.backgroundColor = [UIColor blackColor];
    
    [UIView commitAnimations];
    
    // 블록을 이용한 코드
}

- (void)changeBackgroundClear
{
    [UIView beginAnimations:@"series2" context:NULL];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationDelegate:self];
    
    self.imageView.backgroundColor = [UIColor clearColor];
    
    [UIView commitAnimations];
}

- (IBAction)move:(id)sender
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.7];
    
    if (moveFlag) {
        self.imageView.center = CGPointMake(self.imageView.center.x+100, self.imageView.center.y+100);
    }
    else
    {
        self.imageView.center = CGPointMake(self.imageView.center.x-100, self.imageView.center.y-100);
    }
    moveFlag =! moveFlag;
    [UIView commitAnimations];
}

-(IBAction)alpha:(id)sender
{
    [UIView animateWithDuration:0.7 animations:^{
        self.imageView.alpha = (self.imageView.alpha == 0.0)? 1.0 : 0.0;}];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
