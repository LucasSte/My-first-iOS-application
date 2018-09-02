#import "EightTwoViewController.h"

@implementation EightTwoViewController
-(IBAction)mudnove {
	NineViewController *nove = [[NineViewController alloc] initWithNibName:nil bundle:nil];
	nove.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:nove animated:NO];						
	[nove release];
}	
-(IBAction)msnove {
	UIAlertView *mesnove = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
													  message:@"You made seven points. Pay more attention next time!" 
													 delegate:self
											cancelButtonTitle:nil
											otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[mesnove show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *vnove = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		vnove.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:vnove animated:YES];
		[vnove release];
	}	
}
@end
