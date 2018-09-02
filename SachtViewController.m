#import "SachtViewController.h"

@implementation SachtViewController
-(IBAction)mudsneun {
	SneunViewController *sneun = [[SneunViewController alloc] initWithNibName:nil bundle:nil];
	sneun.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:sneun animated:NO];						
	[sneun release];
}
-(IBAction)messacht {
	UIAlertView *mssacht = [[UIAlertView alloc] initWithTitle:@"You`re smart!"
													   message:@"You made twenty-seven points. Pay more attention next time!" 
													  delegate:self
											 cancelButtonTitle:nil
											 otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[mssacht show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *volacht = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		volacht.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:volacht animated:YES];
		[volacht release];
	}	
}
@end
