#import "iSeisdoisViewController.h"

@implementation iSeisdoisViewController
-(IBAction)mudisete {
	iSeteViewController *iset = [[iSeteViewController alloc] initWithNibName:nil bundle:nil];
	iset.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:iset animated:NO];						
	[iset release];
}
-(IBAction)mesisd {
	UIAlertView *msisd = [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													 message:@"You made fifteen points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msisd show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltisd = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltisd.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltisd animated:YES];
		[voltisd release];
	}	
}
@end
