#import "iOitotresViewController.h"

@implementation iOitotresViewController
-(IBAction)mudioitqua {
	iOitoquatroViewController *ioioq = [[iOitoquatroViewController alloc] initWithNibName:nil bundle:nil];
	ioioq.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:ioioq animated:NO];						
	[ioioq release];
}
-(IBAction)mesioitre {
	UIAlertView *msiotr = [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													 message:@"You made seventeen points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msiotr show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltioit = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltioit.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltioit animated:YES];
		[voltioit release];
	}	
}
@end
