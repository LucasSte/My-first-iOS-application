#import "iCincoViewController.h"

@implementation iCincoViewController
-(IBAction)mudiseis {
	iSeisViewController *ise = [[iSeisViewController alloc] initWithNibName:nil bundle:nil];
	ise.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:ise animated:NO];						
	[ise release];
}
-(IBAction)mesicin {
	UIAlertView *msicin = [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													message:@"You made fourteen points. Pay more attention next time!" 
												   delegate:self
										  cancelButtonTitle:nil
										  otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msicin show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *volticin = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		volticin.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:volticin animated:YES];
		[volticin release];
	}	
}
@end
