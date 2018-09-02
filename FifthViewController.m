#import "FifthViewController.h"

@implementation FifthViewController
-(IBAction)changefifthtwo {
	FifthTwoViewController *cincodois = [[FifthTwoViewController alloc] initWithNibName:nil bundle:nil];
	cincodois.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:cincodois animated:NO];						
	[cincodois release];
}
-(IBAction)alertfifth {
	UIAlertView *al5 = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
												   message:@"You made four points. Pay more attention next time!" 
												  delegate:self
										 cancelButtonTitle:nil
										 otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[al5 show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *civolt = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		civolt.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:civolt animated:YES];
		[civolt release];
	}	
}
@end
