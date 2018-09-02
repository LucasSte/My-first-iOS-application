#import "ThirdViewController.h"

@implementation ThirdViewController
-(IBAction)thirdone {
	ThirdTwoViewController *seg = [[ThirdTwoViewController alloc] initWithNibName:nil bundle:nil];
	seg.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:seg animated:NO];
	[seg release];	
}
-(IBAction)mesthird {
	UIAlertView *mes = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
												  message:@"You made two points. Pay more attention next time!" 
												 delegate:self
										cancelButtonTitle:nil
										otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[mes show];		
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltar = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltar.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltar animated:YES];
		[voltar release];
	}	
}	
@end
