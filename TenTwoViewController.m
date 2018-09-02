#import "TenTwoViewController.h"

@implementation TenTwoViewController
-(IBAction)meddt {
	TenThreeViewController *dezt = [[TenThreeViewController alloc] initWithNibName:nil bundle:nil];
	dezt.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:dezt animated:NO];						
	[dezt release];
}
-(IBAction)mesdd {
	UIAlertView *mesddo= [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
												  message:@"You made nine points. Pay more attention next time!" 
												 delegate:self
										cancelButtonTitle:nil
										otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[mesddo show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *vdezd = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		vdezd.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:vdezd animated:YES];
		[vdezd release];
	}	
}
@end
