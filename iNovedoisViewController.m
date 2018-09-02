#import "iNovedoisViewController.h"

@implementation iNovedoisViewController
-(IBAction)mudinvt {
	iNovetresViewController *invt = [[iNovetresViewController alloc] initWithNibName:nil bundle:nil];
	invt.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:invt animated:NO];						
	[invt release];
}
-(IBAction)mesinvd {
	UIAlertView *msinvd = [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													message:@"You made eightteen points. Pay more attention next time!" 
												   delegate:self
										  cancelButtonTitle:nil
										  otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msinvd show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltinod = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltinod.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltinod animated:YES];
		[voltinod release];
	}	
}
@end
