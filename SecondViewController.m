#import "SecondViewController.h"

@implementation SecondViewController

-(IBAction)switchsecond {
	TwoViewController *tela = [[TwoViewController alloc] initWithNibName:nil bundle:nil];
	tela.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:tela animated:NO];
	[tela release];	
}

-(IBAction)twoidiot {
	UIAlertView *alerttwo = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot :(" 
													   message:@"You made one point! Pay more atention next time!" 
													  delegate:self
											 cancelButtonTitle:nil 
											 otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[alerttwo show];
	
	
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if (buttonIndex == 0) {
		[self dismissModalViewControllerAnimated:YES];
	}	
	
}	

	
@end
