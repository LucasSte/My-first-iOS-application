#import "ThirdTwoViewController.h"

@implementation ThirdTwoViewController
-(IBAction)changethrees{
	ThirdThreeViewController *sec = [[ThirdThreeViewController alloc] initWithNibName:nil bundle:nil];
	sec.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:sec animated:NO];						
	[sec release];					
}
-(IBAction)alertthrees {
	UIAlertView *mess = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
												  message:@"You made two points. Pay more attention next time!" 
												 delegate:self
										cancelButtonTitle:nil
										otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[mess show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *volta = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		volta.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:volta animated:YES];
		[volta release];
	}	
}	
@end
