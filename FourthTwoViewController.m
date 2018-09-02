#import "FourthTwoViewController.h"

@implementation FourthTwoViewController
-(IBAction)changecinco {
	FifthViewController *cinco = [[FifthViewController alloc] initWithNibName:nil bundle:nil];
	cinco.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:cinco animated:NO];						
	[cinco release];
}
-(IBAction)alert42 {
	UIAlertView *al42 = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
												  message:@"You made three points. Pay more attention next time!" 
												 delegate:self
										cancelButtonTitle:nil
										otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[al42 show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *quarvolt = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		quarvolt.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:quarvolt animated:YES];
		[quarvolt release];
	}	
}
@end
