#import "SzehnViewController.h"

@implementation SzehnViewController
-(IBAction)mudfinal {
	FinalViewController *ultimo = [[FinalViewController alloc] initWithNibName:nil bundle:nil];
	ultimo.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:ultimo animated:NO];						
	[ultimo release];
}
-(IBAction)messzehn {
	UIAlertView *msszehn = [[UIAlertView alloc] initWithTitle:@"You`re smart!"
													  message:@"You made twenty-nine points. Pay more attention next time!" 
													 delegate:self
											cancelButtonTitle:nil
											otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msszehn show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *volzehn = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		volzehn.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:volzehn animated:YES];
		[volzehn release];
	}	
}
@end
