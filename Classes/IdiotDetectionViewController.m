//
//  IdiotDetectionViewController.m
//  IdiotDetection
//
//  Created by Lucas Steuernagel on 11/29/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import "IdiotDetectionViewController.h"

@implementation IdiotDetectionViewController

-(IBAction)switchViews {
	SecondViewController *screen = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
	screen.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:screen animated:NO];
	[screen release];
}

-(IBAction)oneidiot {
	UIAlertView *alertone = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot :(" 
													   message:@"You haven`t got any points. Pay more atention next time!" 
													  delegate:self 
											 cancelButtonTitle:@"Try Again!" 
											 otherButtonTitles:@"Tweet it!", nil];
	[alertone show];
	
	
}	


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
