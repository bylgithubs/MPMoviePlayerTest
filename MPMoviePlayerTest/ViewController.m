//
//  ViewController.m
//  MPMoviePlayerTest
//
//  Created by Civet on 2019/4/24.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ViewController.h"

#import <MediaPlayer/mediaPlayer.h>

@interface ViewController ()

@property(nonatomic) MPMoviePlayerController *movieController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle]pathForResource:@"movie" ofType:@"mp4"];
    NSLog(@"path==============%@",path);
    NSURL *url = [NSURL fileURLWithPath:path];
    _movieController = [[MPMoviePlayerController alloc] initWithContentURL:url];
    _movieController.view.frame = CGRectMake(0, 0, 320, 300);
    [self.view addSubview:_movieController.view];
    UIImage *image = [_movieController thumbnailImageAtTime:6 timeOption:MPMovieTimeOptionNearestKeyFrame];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 350, 320, 200)];
    imageView.image = image;
    [self.view addSubview:imageView];
    
    [_movieController play];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
