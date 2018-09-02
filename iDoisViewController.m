#import "iDoisViewController.h"

@implementation iDoisViewController
-(IBAction)muditres {
	iTresViewController *itr = [[iTresViewController alloc] initWithNibName:nil bundle:nil];
	itr.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:itr animated:NO];						
	[itr release];
}
-(IBAction) mesidois {
	UIAlertView *msidois= [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													   message:@"You made eleven points. Pay more attention next time!" 
													  delegate:self
											 cancelButtonTitle:nil
											 otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msidois show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltaid = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltaid.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltaid animated:YES];
		[voltaid release];
	}	
}
@end
