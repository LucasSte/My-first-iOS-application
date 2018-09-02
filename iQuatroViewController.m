#import "iQuatroViewController.h"

@implementation iQuatroViewController
-(IBAction)mudicin {
	iCincoViewController *icin = [[iCincoViewController alloc] initWithNibName:nil bundle:nil];
	icin.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:icin animated:NO];						
	[icin release];
}
-(IBAction)mesiqua {
	UIAlertView *msiqua= [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													 message:@"You made thirteen points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msiqua show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltiqua = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltiqua.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltiqua animated:YES];
		[voltiqua release];
	}	
}
@end
