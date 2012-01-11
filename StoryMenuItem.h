//
//  StoryMenuItem.h
//  JXCoreAnimation
//
//  Created by chenyang on 1/11/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

@class StoryMenuItem;

@protocol StoryMenuItemDelegate <NSObject>
- (void)storyMenuItemTouchesBegan:(StoryMenuItem *)item;
- (void)storyMenuItemTouchesEnd:(StoryMenuItem *)item;
@end


@interface StoryMenuItem : UIImageView {
    UIImageView *_contentImageView;
    CGPoint _startPoint;
    CGPoint _endPoint;
    CGPoint _nearPoint; // near
    CGPoint _farPoint; // far
}

@property (nonatomic) CGPoint startPoint;
@property (nonatomic) CGPoint endPoint;
@property (nonatomic) CGPoint nearPoint;
@property (nonatomic) CGPoint farPoint;
@property (nonatomic, assign) id<StoryMenuItemDelegate> delegate;

+ (id)initWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage backgroundImage:(UIImage *)backgroundImage highlightedBackgroundImage:(UIImage *)highlightedBackgroundImage;

- (id)initWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage backgroundImage:(UIImage *)backgroundImage highlightedBackgroundImage:(UIImage *)highlightedBackgroundImage;
@end
