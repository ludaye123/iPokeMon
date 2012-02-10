//
//  PoketchViewController.m
//  Pokemon
//
//  Created by Kaijie Yu on 1/31/12.
//  Copyright (c) 2012 Kjuly. All rights reserved.
//

#import "PoketchTabViewController.h"

#import "../GlobalConstants.h"

@implementation PoketchTabViewController

- (void)dealloc
{
  [tabBar_ release];
  [tabBarItems_ release];
  
  [super dealloc];
}

- (id)init {
  self = [super init];
  if (self) {
    // Set View Frame
    self.viewFrame = CGRectMake(0.0f, kMapViewHeight + kUtilityBarHeight, 320.0f, 480.0f - kMapViewHeight - kUtilityBarHeight);
    
    // Add child view controllers to each tab
    UIViewController * controller1 = [[UIViewController alloc] init];
    UIViewController * controller2 = [[UIViewController alloc] init];
    [controller2.view setBackgroundColor:[UIColor blueColor]];
    UIViewController * controller3 = [[UIViewController alloc] init];
    UIViewController * controller4 = [[UIViewController alloc] init];
    
    self.tabBarItems = [NSArray arrayWithObjects:
                        [NSDictionary dictionaryWithObjectsAndKeys:@"PoketchTabBarIcon_Messages.png", @"image", controller1, @"viewController", nil],
                        [NSDictionary dictionaryWithObjectsAndKeys:@"PoketchTabBarIcon_SixPokemons.png", @"image", controller2, @"viewController", nil],
                        [NSDictionary dictionaryWithObjectsAndKeys:@"PoketchTabBarIcon_Steps.png", @"image", controller3, @"viewController", nil],
                        [NSDictionary dictionaryWithObjectsAndKeys:@"PoketchTabBarIcon_Other.png", @"image", controller4, @"viewController", nil], nil];
    
    [controller1 release];
    [controller2 release];
    [controller3 release];
    [controller4 release];
  }
  return self;
}

- (void)didReceiveMemoryWarning
{
  // Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];
  
  // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
  [super loadView];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (void)viewDidUnload
{
  [super viewDidUnload];
}

@end
