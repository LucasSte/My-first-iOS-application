#import "FifthThreeViewController.h"

@implementation FifthThreeViewController
-(IBAction)changesix {
	SixthViewController *seis = [[SixthViewController alloc] initWithNibName:nil bundle:nil];
	seis.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:seis animated:NO];						
	[seis release];
}
-(IBAction)alerta53 {
	UIAlertView *al53 = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
												   message:@"You made four points. Pay more attention next time!" 
												  delegate:self
										 cancelButtonTitle:nil
										 otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[al53 show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltseis = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltseis.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltseis animated:YES];
		[voltseis release];
	}	
}
@end
