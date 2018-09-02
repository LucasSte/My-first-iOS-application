#import "iOitodoisViewController.h"

@implementation iOitodoisViewController
-(IBAction)mudioit {
	iOitotresViewController *ioiot = [[iOitotresViewController alloc] initWithNibName:nil bundle:nil];
	ioiot.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:ioiot animated:NO];						
	[ioiot release];
}
-(IBAction)mesioid {
	UIAlertView *msioid = [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													message:@"You made seventeen points. Pay more attention next time!" 
												   delegate:self
										  cancelButtonTitle:nil
										  otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msioid show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltioid = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltioid.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltioid animated:YES];
		[voltioid release];
	}	
}
@end
