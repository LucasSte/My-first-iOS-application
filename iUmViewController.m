#import "iUmViewController.h"

@implementation iUmViewController
-(IBAction)mudidois {
	iUmdoisViewController *iud = [[iUmdoisViewController alloc] initWithNibName:nil bundle:nil];
	iud.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:iud animated:NO];						
	[iud release];
}
-(IBAction)mesium {
	UIAlertView *msium= [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													message:@"You made ten points. Pay more attention next time!" 
												   delegate:self
										  cancelButtonTitle:nil
										  otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msium show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltaium = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltaium.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltaium animated:YES];
		[voltaium release];
	}	
}
@end
