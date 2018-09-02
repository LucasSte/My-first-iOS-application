#import "SneunViewController.h"

@implementation SneunViewController
-(IBAction)mudszehn {
	SzehnViewController *szehn = [[SzehnViewController alloc] initWithNibName:nil bundle:nil];
	szehn.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:szehn animated:NO];						
	[szehn release];
}
-(IBAction)messneun {
	UIAlertView *mssneun = [[UIAlertView alloc] initWithTitle:@"You`re smart!"
													  message:@"You made twenty-eight points. Pay more attention next time!" 
													 delegate:self
											cancelButtonTitle:nil
											otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[mssneun show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *volneun = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		volneun.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:volneun animated:YES];
		[volneun release];
	}	
}
@end
