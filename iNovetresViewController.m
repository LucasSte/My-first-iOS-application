#import "iNovetresViewController.h"

@implementation iNovetresViewController
-(IBAction)mudinvq {
	iNovequatroViewController *invq = [[iNovequatroViewController alloc] initWithNibName:nil bundle:nil];
	invq.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:invq animated:NO];						
	[invq release];
}
-(IBAction)mesinvq {
	UIAlertView *msinvq = [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
													 message:@"You made eightteen points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again", @"Tweet it!", nil];
	[msinvq show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltinoq = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltinoq.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltinoq animated:YES];
		[voltinoq release];
	}	
}
@end
