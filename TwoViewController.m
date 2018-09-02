#import "TwoViewController.h"

@implementation TwoViewController

-(IBAction)changethree {
	ThirdViewController *tres = [[ThirdViewController alloc] initWithNibName:nil bundle:nil];
	tres.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:tres animated:NO];
	[tres release];
}	

-(IBAction)idiottwo {
	UIAlertView *dois = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot! :("
												   message:@"You made one point! Pay more atention next time!" 
												  delegate:self
										 cancelButtonTitle:nil 
										 otherButtonTitles:@"Try Again!", @"Tweet it", nil];
	[dois show];	
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltar = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltar.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltar animated:YES];
		[voltar release];
	}	
}
@end
