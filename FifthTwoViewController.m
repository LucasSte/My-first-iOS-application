#import "FifthTwoViewController.h"

@implementation FifthTwoViewController
-(IBAction)change53 {
	FifthThreeViewController *cincotres = [[FifthThreeViewController alloc] initWithNibName:nil bundle:nil];
	cincotres.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:cincotres animated:NO];						
	[cincotres release];
}
-(IBAction)al53 {
	UIAlertView *al52 = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
												  message:@"You made four points. Pay more attention next time!" 
												 delegate:self
										cancelButtonTitle:nil
										otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[al52 show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *ci3volt = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		ci3volt.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:ci3volt animated:YES];
		[ci3volt release];
	}	
}
@end
