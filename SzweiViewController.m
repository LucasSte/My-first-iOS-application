#import "SzweiViewController.h"

@implementation SzweiViewController
-(IBAction)mudsdrei {
	SdreiViewController *sdrei = [[SdreiViewController alloc] initWithNibName:nil bundle:nil];
	sdrei.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:sdrei animated:NO];						
	[sdrei release];
}
-(IBAction)messzwei {
	UIAlertView *mszwei = [[UIAlertView alloc] initWithTitle:@"You`re smart!"
													 message:@"You made twenty-one points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[mszwei show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *volzwei = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		volzwei.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:volzwei animated:YES];
		[volzwei release];
	}	
}
@end
