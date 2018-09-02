#import "SeinsViewController.h"

@implementation SeinsViewController
-(IBAction)mudszwei {
	SzweiViewController *szwei = [[SzweiViewController alloc] initWithNibName:nil bundle:nil];
	szwei.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:szwei animated:NO];						
	[szwei release];
}
-(IBAction)messeins {
	UIAlertView *mseins = [[UIAlertView alloc] initWithTitle:@"You`re smart!"
													 message:@"You made twenty points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[mseins show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voleins = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voleins.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voleins animated:YES];
		[voleins release];
	}	
}
@end
