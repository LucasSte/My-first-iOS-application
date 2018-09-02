#import "iOitoViewController.h"

@implementation iOitoViewController
-(IBAction)mudioid {
	iOitodoisViewController *ioiod = [[iOitodoisViewController alloc] initWithNibName:nil bundle:nil];
	ioiod.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:ioiod animated:NO];						
	[ioiod release];
}
-(IBAction)mesioi {
	UIAlertView *msioi = [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													  message:@"You made seventeen points. Pay more attention next time!" 
													 delegate:self
											cancelButtonTitle:nil
											otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msioi show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltioi = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltioi.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltioi animated:YES];
		[voltioi release];
	}	
}
@end
