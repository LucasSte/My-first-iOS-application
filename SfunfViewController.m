#import "SfunfViewController.h"

@implementation SfunfViewController
-(IBAction)mudssechs {
	SsechsViewController *ssechs = [[SsechsViewController alloc] initWithNibName:nil bundle:nil];
	ssechs.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:ssechs animated:NO];						
	[ssechs release];
}
-(IBAction)messfunf {
	UIAlertView *msfunf = [[UIAlertView alloc] initWithTitle:@"You`re smart!"
													 message:@"You made twenty-four points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msfunf show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *volfunf = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		volfunf.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:volfunf animated:YES];
		[volfunf release];
	}	
}
@end
