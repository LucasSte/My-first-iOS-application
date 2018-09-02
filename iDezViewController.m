#import "iDezViewController.h"

@implementation iDezViewController
-(IBAction)messmart {
	UIAlertView *mssmart= [[UIAlertView alloc] initWithTitle:@"You`re not an idiot!"
													message:@"Now, you`re smart and you made twenty points till now!" 
												   delegate:self
										  cancelButtonTitle:nil
										  otherButtonTitles:@"Continue", nil];
	mssmart.tag=1;
	[mssmart show];
}

-(IBAction)mesifalhou {
	UIAlertView *msifalhou= [[UIAlertView alloc] initWithTitle:@"You`re an idiot!"
												   message:@"You made nineteen points. Pay more attention next time!" 
												  delegate:self
										 cancelButtonTitle:nil
										 otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	msifalhou.tag=2;
	[msifalhou show];
}
-(void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (actionSheet.tag==1) {
		SeinsViewController *irsmart = [[SeinsViewController alloc] initWithNibName:nil bundle:nil];
		irsmart.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
		[self presentModalViewController:irsmart animated:YES];
		[irsmart release];
	}
	else if (actionSheet.tag==2) {
		IdiotDetectionViewController *voltidz = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltidz.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltidz animated:YES];
		[voltidz release];
	}	
}
@end
