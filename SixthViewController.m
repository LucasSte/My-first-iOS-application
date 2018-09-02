#import "SixthViewController.h"

@implementation SixthViewController
-(IBAction)mudarsixdois {
	SixthTwoViewController *seisdois = [[SixthTwoViewController alloc] initWithNibName:nil bundle:nil];
	seisdois.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:seisdois animated:NO];						
	[seisdois release];
}
-(IBAction)alertaseis {
	UIAlertView *al6 = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
												   message:@"You made five points. Pay more attention next time!" 
												  delegate:self
										 cancelButtonTitle:nil
										 otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[al6 show];
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
