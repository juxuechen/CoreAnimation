//
//  StoryMenu.h
//  JXCoreAnimation
//
//  Created by chenyang on 1/11/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "StoryMenuItem.h"

@class StoryMenu;

@protocol StoryMenuDelegate <NSObject>
- (void)tappedInStoryMenu:(StoryMenu *)storyMenu didSelectAtIndex:(NSInteger)index;
@end


@interface StoryMenu : UIView <StoryMenuItemDelegate> {
    int _flag;
    NSTimer *_timer;
    NSArray *_storyMenus;
    StoryMenuItem *_storyMenu;
	int step;
}

@property (nonatomic, copy) NSArray *storyMenus;
@property (nonatomic, getter = isExpanding) BOOL expanding;
@property (nonatomic, assign) id<StoryMenuDelegate> delegate;
@property (nonatomic, retain, readonly) StoryMenuItem *storyMenu;

- (id)initWithStoryMenus:(NSArray *)aStoryMenus;

@end
