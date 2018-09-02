#import "iUmdoisViewController.h"

@implementation iUmdoisViewController
-(IBAction)mudidos {
	iDoisViewController *ido = [[iDoisViewController alloc] initWithNibName:nil bundle:nil];
	ido.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:ido animated:NO];						
	[ido release];
}
-(IBAction)mesiumdois {
	UIAlertView *msiumdois= [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													message:@"You made ten points. Pay more attention next time!" 
												   delegate:self
										  cancelButtonTitle:nil
										  otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msiumdois show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltaiumd = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltaiumd.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltaiumd animated:YES];
		[voltaiumd release];
	}	
}
@end
