#import "SdreiViewController.h"

@implementation SdreiViewController
-(IBAction)mudsvier {
	SvierViewController *svier = [[SvierViewController alloc] initWithNibName:nil bundle:nil];
	svier.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:svier animated:NO];						
	[svier release];
}
-(IBAction)messdrei {
	UIAlertView *msdrei = [[UIAlertView alloc] initWithTitle:@"You`re smart!"
													 message:@"You made twenty-two points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msdrei show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voldrei = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voldrei.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voldrei animated:YES];
		[voldrei release];
	}	
}
@end
