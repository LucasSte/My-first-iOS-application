#import "SvierViewController.h"

@implementation SvierViewController
-(IBAction)mudsfunf {
	SfunfViewController *sfunf = [[SfunfViewController alloc] initWithNibName:nil bundle:nil];
	sfunf.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:sfunf animated:NO];						
	[sfunf release];
}
-(IBAction)messvier {
	UIAlertView *msvier = [[UIAlertView alloc] initWithTitle:@"You`re smart!"
													 message:@"You made twenty-three points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msvier show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *volvier = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		volvier.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:volvier animated:YES];
		[volvier release];
	}	
}
@end
