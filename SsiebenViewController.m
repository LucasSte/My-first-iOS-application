#import "SsiebenViewController.h"

@implementation SsiebenViewController
-(IBAction)mudsacht {
	SachtViewController *sacht= [[SachtViewController alloc] initWithNibName:nil bundle:nil];
	sacht.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:sacht animated:NO];						
	[sacht release];
}
-(IBAction)messsieben {
	UIAlertView *mssieben = [[UIAlertView alloc] initWithTitle:@"You`re smart!"
													   message:@"You made twenty-six points. Pay more attention next time!" 
													  delegate:self
											 cancelButtonTitle:nil
											 otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[mssieben show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *volsieben = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		volsieben.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:volsieben animated:YES];
		[volsieben release];
	}	
}
@end
