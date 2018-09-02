#import "iNoveViewController.h"

@implementation iNoveViewController
-(IBAction)mudinod {
	iNovedoisViewController *inovd = [[iNovedoisViewController alloc] initWithNibName:nil bundle:nil];
	inovd.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:inovd animated:NO];						
	[inovd release];
}
-(IBAction)mesinv {
	UIAlertView *msinv = [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													   message:@"You made eightteen points. Pay more attention next time!" 
													  delegate:self
											 cancelButtonTitle:nil
											 otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msinv show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltino = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltino.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltino animated:YES];
		[voltino release];
	}	
}
@end
