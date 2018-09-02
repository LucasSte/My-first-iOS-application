#import "SixthTwoViewController.h"

@implementation SixthTwoViewController
-(IBAction)changethreesix {
	SixthThreeViewController *seistres = [[SixthThreeViewController alloc] initWithNibName:nil bundle:nil];
	seistres.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:seistres animated:NO];						
	[seistres release];
}
-(IBAction)alertthreesix {
	UIAlertView *al63 = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
												  message:@"You made five points. Pay more attention next time!" 
												 delegate:self
										cancelButtonTitle:nil
										otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[al63 show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltseisdois = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltseisdois.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltseisdois animated:YES];
		[voltseisdois release];
	}	
}
@end
