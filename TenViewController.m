#import "TenViewController.h"

@implementation TenViewController
-(IBAction)muddezd {
	TenTwoViewController *dezd = [[TenTwoViewController alloc] initWithNibName:nil bundle:nil];
	dezd.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:dezd animated:NO];						
	[dezd release];
}
-(IBAction)mesdez {
	UIAlertView *mesd= [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
													  message:@"You made nine points. Pay more attention next time!" 
													 delegate:self
											cancelButtonTitle:nil
											otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[mesd show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *vdez = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		vdez.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:vdez animated:YES];
		[vdez release];
	}	
}
@end
