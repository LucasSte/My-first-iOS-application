#import "iOitoquatroViewController.h"

@implementation iOitoquatroViewController
-(IBAction)mudinov {
	iNoveViewController *inovu = [[iNoveViewController alloc] initWithNibName:nil bundle:nil];
	inovu.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:inovu animated:NO];						
	[inovu release];
}
-(IBAction)mesioiqua {
	UIAlertView *msioiqua = [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													 message:@"You made seventeen points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msioiqua show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltioiq = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltioiq.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltioiq animated:YES];
		[voltioiq release];
	}	
}
@end
