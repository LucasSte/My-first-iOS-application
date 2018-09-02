#import "iSetetressViewController.h"

@implementation iSetetressViewController
-(IBAction)mudoioi {
	iOitoViewController *ioio = [[iOitoViewController alloc] initWithNibName:nil bundle:nil];
	ioio.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:ioio animated:NO];						
	[ioio release];
}
-(IBAction)mesisett {
	UIAlertView *msisett = [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													  message:@"You made sixteen points. Pay more attention next time!" 
													 delegate:self
											cancelButtonTitle:nil
											otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msisett show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltisett = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltisett.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltisett animated:YES];
		[voltisett release];
	}	
}
@end
