#import "SsechsViewController.h"

@implementation SsechsViewController
-(IBAction)mudssieben {
	SsiebenViewController *ssieben = [[SsiebenViewController alloc] initWithNibName:nil bundle:nil];
	ssieben.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:ssieben animated:NO];						
	[ssieben release];
}
-(IBAction)messsechs {
	UIAlertView *mssechs = [[UIAlertView alloc] initWithTitle:@"You`re smart!"
													 message:@"You made twenty-five points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[mssechs show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *volsechs = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		volsechs.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:volsechs animated:YES];
		[volsechs release];
	}	
}
@end
