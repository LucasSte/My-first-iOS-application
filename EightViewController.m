#import "EightViewController.h"

@implementation EightViewController
-(IBAction)changdois {
	EightTwoViewController *oitodois = [[EightTwoViewController alloc] initWithNibName:nil bundle:nil];
	oitodois.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:oitodois animated:NO];						
	[oitodois release];
}
-(IBAction)msoito {
	UIAlertView *mesoito = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
													  message:@"You made seven points. Pay more attention next time!" 
													 delegate:self
											cancelButtonTitle:nil
											otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[mesoito show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voito = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voito.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voito animated:YES];
		[voito release];
	}	
}
@end
