#import "ThirdThreeViewController.h"

@implementation ThirdThreeViewController
-(IBAction)changethreefour {
	FourthViewController *ul = [[FourthViewController alloc] initWithNibName:nil bundle:nil];
	ul.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:ul animated:NO];						
	[ul release];
}
-(IBAction)ulalert{
	UIAlertView *alul = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
												   message:@"You made two points. Pay more attention next time!" 
												  delegate:self
										 cancelButtonTitle:nil
										 otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[alul show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *volt = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		volt.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:volt animated:YES];
		[volt release];
	}	
}
@end
