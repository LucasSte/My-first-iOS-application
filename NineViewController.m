#import "NineViewController.h"

@implementation NineViewController
-(IBAction)mudnovdois {
	NineTwoViewController *novdois = [[NineTwoViewController alloc] initWithNibName:nil bundle:nil];
	novdois.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:novdois animated:NO];						
	[novdois release];
}
-(IBAction)msnov {
	UIAlertView *mesnov = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
													  message:@"You made eight points. Pay more attention next time!" 
													 delegate:self
											cancelButtonTitle:nil
											otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[mesnov show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *vnov = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		vnov.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:vnov animated:YES];
		[vnov release];
	}	
}
@end
