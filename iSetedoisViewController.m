#import "iSetedoisViewController.h"

@implementation iSetedoisViewController
-(IBAction)mudisetr {
	iSetetressViewController *isett = [[iSetetressViewController alloc] initWithNibName:nil bundle:nil];
	isett.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:isett animated:NO];						
	[isett release];
}
-(IBAction)messetd {
	UIAlertView *msisetd = [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													 message:@"You made sixteen points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msisetd show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltisetd = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltisetd.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltisetd animated:YES];
		[voltisetd release];
	}	
}
@end
