#import "FourthViewController.h"

@implementation FourthViewController
-(IBAction)changefourtwo {
	FourthTwoViewController *quatro = [[FourthTwoViewController alloc] initWithNibName:nil bundle:nil];
	quatro.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:quatro animated:NO];						
	[quatro release];
}
-(IBAction)alertfour {
	UIAlertView *qua = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
												   message:@"You made three points. Pay more attention next time!" 
												  delegate:self
										 cancelButtonTitle:nil
										 otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[qua show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *quavolt = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		quavolt.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:quavolt animated:YES];
		[quavolt release];
	}	
}
@end
