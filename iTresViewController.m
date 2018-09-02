#import "iTresViewController.h"

@implementation iTresViewController
-(IBAction)mudiqua {
	iQuatroViewController *iqua = [[iQuatroViewController alloc] initWithNibName:nil bundle:nil];
	iqua.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:iqua animated:NO];						
	[iqua release];
}
-(IBAction)mesitres {
	UIAlertView *msitres= [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													 message:@"You made twelve points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msitres show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltait = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltait.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltait animated:YES];
		[voltait release];
	}	
}
@end
