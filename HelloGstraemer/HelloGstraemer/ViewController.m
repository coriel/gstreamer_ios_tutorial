//
//  ViewController.m
//  HelloGstraemer
//
//  Created by 심연진 on 2016. 3. 25..
//  Copyright © 2016년 coriel. All rights reserved.
//

#import "ViewController.h"
#import "GStreamerBackend.h"

@interface ViewController () {
    GStreamerBackend *gst_backend;
}

@end

@implementation ViewController

@synthesize label;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    gst_backend = [[GStreamerBackend alloc] init];
    
    label.text = [NSString stringWithFormat:@"Welcome to %@!", [gst_backend getGStreamerVersion]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
