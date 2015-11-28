//
//  ViewController.m
//  Animation
//
//  Created by Lion0324 on 11/27/15.
//  Copyright © 2015 Lion0324. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>


@interface ViewController ()
{
    CALayer *_layer;
    CGFloat topViewAniDuration;
    CGFloat bottomViewAniDuration;

    CGFloat button1AniDuration;
    CGFloat button2AniDuration;
    CGFloat button3AniDuration;
    CGFloat button4AniDuration;
    CGFloat button5AniDuration;
    CGFloat button6AniDuration;
    
    int     button1_Idx;
    int     button2_Idx;
    int     button3_Idx;
    int     button4_Idx;
    int     button5_Idx;
    int     button6_Idx;
    
    NSArray   *btn_Array;

    
    CGFloat label1AniDuration;
    CGFloat label2AniDuration;
    CGFloat label3AniDuration;
    CGFloat label4AniDuration;
    CGFloat label5AniDuration;
    CGFloat label6AniDuration;
    
    int     label1_Idx;
    int     label2_Idx;
    int     label3_Idx;
    int     label4_Idx;
    int     label5_Idx;
    int     label6_Idx;
    
    NSArray   *label_Array;

    
}

@property (nonatomic, strong) IBOutlet UIView *topView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *topViewHeight;
@property (strong, nonatomic) NSTimer *topViewTimer;


@property (nonatomic, strong) IBOutlet UIView *bottomView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *bottomViewHeight;
@property (strong, nonatomic) NSTimer *bottomViewTimer;


@property (nonatomic, strong) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *button1ViewPosX;
@property (strong, nonatomic) NSTimer *button1ViewTimer;


@property (nonatomic, strong) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *button2ViewPosX;
@property (strong, nonatomic) NSTimer *button2ViewTimer;

@property (nonatomic, strong) IBOutlet UIButton *button3;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *button3ViewPosX;
@property (strong, nonatomic) NSTimer *button3ViewTimer;

@property (nonatomic, strong) IBOutlet UIButton *button4;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *button4ViewPosX;
@property (strong, nonatomic) NSTimer *button4ViewTimer;

@property (nonatomic, strong) IBOutlet UIButton *button5;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *button5ViewPosX;
@property (strong, nonatomic) NSTimer *button5ViewTimer;

@property (nonatomic, strong) IBOutlet UIButton *button6;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *button6ViewPosX;
@property (strong, nonatomic) NSTimer *button6ViewTimer;


@property (nonatomic, strong) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *label1ViewPosY;
@property (strong, nonatomic) NSTimer *label1ViewTimer;

@property (nonatomic, strong) IBOutlet UILabel *label2;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *label2ViewPosY;
@property (strong, nonatomic) NSTimer *label2ViewTimer;

@property (nonatomic, strong) IBOutlet UILabel *label3;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *label3ViewPosY;
@property (strong, nonatomic) NSTimer *label3ViewTimer;

@property (nonatomic, strong) IBOutlet UILabel *label4;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *label4ViewPosY;
@property (strong, nonatomic) NSTimer *label4ViewTimer;

@property (nonatomic, strong) IBOutlet UILabel *label5;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *label5ViewPosY;
@property (strong, nonatomic) NSTimer *label5ViewTimer;

@property (nonatomic, strong) IBOutlet UILabel *label6;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *label6ViewPosY;
@property (strong, nonatomic) NSTimer *label6ViewTimer;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    btn_Array = [[NSArray alloc] initWithObjects:
                      [NSNumber numberWithFloat:50.0f],
                      [NSNumber numberWithFloat:50.0f],
                      [NSNumber numberWithFloat:50.0f],
                      [NSNumber numberWithFloat:50.0f],
                      [NSNumber numberWithFloat:50.0f],
                      [NSNumber numberWithFloat:50.0f],
                      [NSNumber numberWithFloat:50.0f],
                      [NSNumber numberWithFloat:50.0f],
                      [NSNumber numberWithFloat:50.0f],
                      [NSNumber numberWithFloat:50.0f],
                      [NSNumber numberWithFloat:50.0f],
                      [NSNumber numberWithFloat:50.0f],
                      [NSNumber numberWithFloat:10.0f],
                      [NSNumber numberWithFloat:10.0f],
                      [NSNumber numberWithFloat: 5.0f],
                      [NSNumber numberWithFloat: 3.0f],
                      [NSNumber numberWithFloat:-3.0f],
                      [NSNumber numberWithFloat:-5.0f],
                      [NSNumber numberWithFloat:-10.0f],
                      [NSNumber numberWithFloat:-10.0f],
                      nil];
    
    label_Array = [[NSArray alloc] initWithObjects:
                 [NSNumber numberWithFloat:50.0f],
                 [NSNumber numberWithFloat:50.0f],
                 [NSNumber numberWithFloat:50.0f],
                 [NSNumber numberWithFloat:50.0f],
                 [NSNumber numberWithFloat:50.0f],
                 [NSNumber numberWithFloat:50.0f],
                 [NSNumber numberWithFloat:50.0f],
                 [NSNumber numberWithFloat:50.0f],
                 [NSNumber numberWithFloat:50.0f],
                 [NSNumber numberWithFloat:50.0f],
                 [NSNumber numberWithFloat:50.0f],
                 [NSNumber numberWithFloat:50.0f],
                 [NSNumber numberWithFloat:10.0f],
                 [NSNumber numberWithFloat:10.0f],
                 [NSNumber numberWithFloat: 5.0f],
                 [NSNumber numberWithFloat: 3.0f],
                 [NSNumber numberWithFloat:-3.0f],
                 [NSNumber numberWithFloat:-5.0f],
                 [NSNumber numberWithFloat:-10.0f],
                 [NSNumber numberWithFloat:-10.0f],
                 nil];

    // This example uses a single CALayer positioned new the top of the view.
    self.topViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animation111) userInfo:nil repeats:YES];
    
    self.button1.layer.cornerRadius = self.button1.frame.size.width / 2.0f;
    self.button2.layer.cornerRadius = self.button2.frame.size.width / 2.0f;
    self.button3.layer.cornerRadius = self.button3.frame.size.width / 2.0f;
    self.button4.layer.cornerRadius = self.button4.frame.size.width / 2.0f;
    self.button5.layer.cornerRadius = self.button5.frame.size.width / 2.0f;
    self.button6.layer.cornerRadius = self.button6.frame.size.width / 2.0f;

    // This example uses a single CALayer positioned new the top of the view.
    self.button1ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animationButton1) userInfo:nil repeats:YES];
    
    self.button1ViewPosX.constant = 550.0f;
    self.button2ViewPosX.constant = 590.0f;
    self.button3ViewPosX.constant = 590.0f;
    self.button4ViewPosX.constant = 590.0f;
    self.button5ViewPosX.constant = 590.0f;
    self.button6ViewPosX.constant = 590.0f;
    
    
    // This example uses a single CALayer positioned new the top of the view.
    self.label1ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animationLabel1) userInfo:nil repeats:YES];
    
    self.label1ViewPosY.constant = 750.0f;
    self.label2ViewPosY.constant = 590.0f;
    self.label3ViewPosY.constant = 590.0f;
    self.label4ViewPosY.constant = 590.0f;
    self.label5ViewPosY.constant = 590.0f;
    self.label6ViewPosY.constant = 590.0f;


}

- (void)animationLabel1
{
    label1AniDuration += 0.0005;
    label1_Idx++;
    
    if (label1AniDuration >= 0.009f) {
        [self.label1ViewTimer invalidate];
        //self.button2ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animationButton2) userInfo:nil repeats:YES];
    }
    if (label1_Idx == 15) {
        //[self.button1ViewTimer invalidate];
        self.label2ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationLabel2) userInfo:nil repeats:YES];
    }
    [UIView animateWithDuration:0.0005
                     animations:^{
                         self.label1ViewPosY.constant -= [label_Array[label1_Idx] floatValue];
                         
                     }];
    
}

- (void)animationLabel2
{
    label2AniDuration += 0.0005;
    label2_Idx++;
    
    if (label2AniDuration >= 0.009f) {
        [self.label2ViewTimer invalidate];
        //self.button2ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animationButton2) userInfo:nil repeats:YES];
    }
    if (label2_Idx == 15) {
        //[self.button1ViewTimer invalidate];
        self.label3ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationLabel3) userInfo:nil repeats:YES];
    }
    [UIView animateWithDuration:0.0005
                     animations:^{
                         self.label2ViewPosY.constant -= [label_Array[label2_Idx] floatValue];
                         
                     }];
    
}

- (void)animationLabel3
{
    label3AniDuration += 0.0005;
    label3_Idx++;
    
    if (label3AniDuration >= 0.009f) {
        [self.label3ViewTimer invalidate];
        //self.button2ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animationButton2) userInfo:nil repeats:YES];
    }
    if (label3_Idx == 15) {
        //[self.button1ViewTimer invalidate];
        self.label4ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationLabel4) userInfo:nil repeats:YES];
    }
    [UIView animateWithDuration:0.0005
                     animations:^{
                         self.label3ViewPosY.constant -= [label_Array[label3_Idx] floatValue];
                         
                     }];
    
}

- (void)animationLabel4
{
    label4AniDuration += 0.0005;
    label4_Idx++;
    
    if (label4AniDuration >= 0.009f) {
        [self.label4ViewTimer invalidate];
        //self.button2ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animationButton2) userInfo:nil repeats:YES];
    }
    if (label4_Idx == 15) {
        //[self.button1ViewTimer invalidate];
        self.label5ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationLabel5) userInfo:nil repeats:YES];
    }
    [UIView animateWithDuration:0.0005
                     animations:^{
                         self.label4ViewPosY.constant -= [label_Array[label4_Idx] floatValue];
                         
                     }];
    
}

- (void)animationLabel5
{
    label5AniDuration += 0.0005;
    label5_Idx++;
    
    if (label5AniDuration >= 0.009f) {
        [self.label5ViewTimer invalidate];
        //self.button2ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animationButton2) userInfo:nil repeats:YES];
    }
    if (label5_Idx == 15) {
        //[self.button1ViewTimer invalidate];
        self.label6ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationLabel6) userInfo:nil repeats:YES];
    }
    [UIView animateWithDuration:0.0005
                     animations:^{
                         self.label5ViewPosY.constant -= [label_Array[label5_Idx] floatValue];
                         
                     }];
    
}

- (void)animationLabel6
{
    label6AniDuration += 0.0005;
    label6_Idx++;
    
    if (label6AniDuration >= 0.009f) {
        [self.label6ViewTimer invalidate];
    }
    [UIView animateWithDuration:0.0005
                     animations:^{
                         self.label6ViewPosY.constant -= [label_Array[label6_Idx] floatValue];
                         
                     }];
    
}

- (void)animation111
{
    topViewAniDuration += 0.02;
    if (topViewAniDuration >= 0.09f) {
        [self.topViewTimer invalidate];
        self.bottomViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animation222) userInfo:nil repeats:YES];

    }
    [UIView animateWithDuration:0.02
                     animations:^{
                         self.topViewHeight.constant += 10;
    }];

}

- (void)animation222
{
    bottomViewAniDuration += 0.02;
    if (bottomViewAniDuration >= 0.09f) {
        
        [self.bottomViewTimer invalidate];
        
    }
    [UIView animateWithDuration:0.02
                     animations:^{
                         self.bottomViewHeight.constant += 50;
                     }];
    
}

- (void)animationButton1
{
    button1AniDuration += 0.0005;
    button1_Idx++;
    
    if (button1AniDuration >= 0.009f) {
        [self.button1ViewTimer invalidate];
        //self.button2ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animationButton2) userInfo:nil repeats:YES];
    }
    if (button1_Idx == 15) {
        //[self.button1ViewTimer invalidate];
        self.button2ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationButton2) userInfo:nil repeats:YES];
    }
    [UIView animateWithDuration:0.0005
                     animations:^{
                         self.button1ViewPosX.constant -= [btn_Array[button1_Idx] floatValue];

                     }];
    
}

- (void)animationButton2
{
    button2AniDuration += 0.0005;
    button2_Idx++;
    
    if (button2AniDuration >= 0.009f) {
        [self.button2ViewTimer invalidate];
        //self.button3ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationButton3) userInfo:nil repeats:YES];
    }
    if (button2_Idx == 15) {
        //[self.button2ViewTimer invalidate];
        self.button3ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationButton3) userInfo:nil repeats:YES];
    }
    [UIView animateWithDuration:0.0005
                     animations:^{
                         self.button2ViewPosX.constant -= [btn_Array[button2_Idx] floatValue];

                     }];
    
}

- (void)animationButton3
{
    button3AniDuration += 0.0005;
    button3_Idx++;
    
    if (button3AniDuration >= 0.009f) {
        [self.button3ViewTimer invalidate];
        //self.button4ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationButton4) userInfo:nil repeats:YES];

    }
    if (button3_Idx == 15) {
        //[self.button3ViewTimer invalidate];
        self.button4ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationButton4) userInfo:nil repeats:YES];
        
    }
    [UIView animateWithDuration:0.0005
                     animations:^{
                         self.button3ViewPosX.constant -= [btn_Array[button3_Idx] floatValue];

                     }];
    
}

- (void)animationButton4
{
    button4AniDuration += 0.0005;
    button4_Idx++;
    
    if (button4AniDuration >= 0.009f) {
        [self.button4ViewTimer invalidate];
        //self.button5ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationButton5) userInfo:nil repeats:YES];

    }
    if (button4_Idx == 15) {
        //[self.button4ViewTimer invalidate];
        self.button5ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationButton5) userInfo:nil repeats:YES];
        
    }
    [UIView animateWithDuration:0.0005
                     animations:^{
                         self.button4ViewPosX.constant -= [btn_Array[button4_Idx] floatValue];

                     }];
    
}

- (void)animationButton5
{
    button5AniDuration += 0.0005;
    button5_Idx++;
    
    if (button5AniDuration >= 0.009f) {
        [self.button5ViewTimer invalidate];
        //self.button6ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationButton6) userInfo:nil repeats:YES];
    }
    if (button5_Idx == 15) {
        //[self.button5ViewTimer invalidate];
        self.button6ViewTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(animationButton6) userInfo:nil repeats:YES];
    }
   
    [UIView animateWithDuration:0.0005
                     animations:^{
                         self.button5ViewPosX.constant -= [btn_Array[button5_Idx] floatValue];

                     }];
    
}

- (void)animationButton6
{
    button6AniDuration += 0.0005;
    button6_Idx++;
    
    if (button6AniDuration >= 0.009f) {
        [self.button6ViewTimer invalidate];
        
    }
    [UIView animateWithDuration:0.0005
                     animations:^{
                         self.button6ViewPosX.constant -= [btn_Array[button6_Idx] floatValue];
                         
                     }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
