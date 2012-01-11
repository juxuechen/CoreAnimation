//
//  JXCoreAnimationViewController.m
//  JXCoreAnimation
//
//  Created by chenyang on 1/11/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "JXCoreAnimationViewController.h"


@implementation JXCoreAnimationViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	UIImage *backgroundImage = [UIImage imageNamed:@"myItem.png"];
    
    NSArray *storyImages = [[NSArray alloc] initWithObjects:
                            [UIImage imageNamed:@"couponItem.png"],
                            [UIImage imageNamed:@"favoriteItem.png"],
                            [UIImage imageNamed:@"nearbyItem.png"],
                            [UIImage imageNamed:@"waimaiItem.png"],
                            [UIImage imageNamed:@"tuanItem.png"], nil];
    
    NSMutableArray *storyMenusArray = [[NSMutableArray alloc]init];
    for (UIImage *storyImage in storyImages) {
        StoryMenuItem *menuItem = [StoryMenuItem initWithImage:storyImage
											  highlightedImage:nil
											   backgroundImage:backgroundImage
									highlightedBackgroundImage:nil];
        [storyMenusArray addObject:menuItem];
    }
	
    StoryMenu *storyMenu = [[StoryMenu alloc] initWithStoryMenus:storyMenusArray];
    storyMenu.delegate = self;
    [self.view addSubview:storyMenu];
	
	for (UIView *view in storyMenu.subviews){
		NSLog(@"view %@",view);
	}
}

- (void)tappedInStoryMenu:(StoryMenu *)storyMenu didSelectAtIndex:(NSInteger)index {
    NSLog(@"Select the index : %d",index);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
