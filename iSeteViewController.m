#import "iSeteViewController.h"

@implementation iSeteViewController
-(IBAction)mudised {
	iSetedoisViewController *isetd = [[iSetedoisViewController alloc] initWithNibName:nil bundle:nil];
	isetd.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:isetd animated:NO];						
	[isetd release];
}
-(IBAction)mesiset {
	UIAlertView *msiset = [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													message:@"You made sixteen points. Pay more attention next time!" 
												   delegate:self
										  cancelButtonTitle:nil
										  otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msiset show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltiset = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltiset.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltiset animated:YES];
		[voltiset release];
	}	
}
@end
