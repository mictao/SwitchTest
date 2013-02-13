//
//  ViewController.m
//  SwitchTest
//
//  Created by Administrator on 13-02-11.
//  Copyright (c) 2013 Administrator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    self.mySwitch = [[UISwitch alloc] initWithFrame: CGRectMake(100,100,0,0)];
    [self.view addSubview:self.mySwitch];
    
    //the default is set to yes
    [self.mySwitch setOn:YES];
    [self.mySwitch addTarget:self
                      action:@selector(switchIsChanged:)
            forControlEvents:UIControlEventValueChanged];
    
    self.mySwitch.thumbTintColor = [UIColor brownColor];
    self.mySwitch.onTintColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)switchIsChanged:(UISwitch *)paramSender{
    NSLog(@"Sender is = %@", paramSender);
    
    if ([paramSender isOn]){
        NSLog(@"Turned on");
    }
    else{
        NSLog(@"Turned off");
    }
    
}

@end
