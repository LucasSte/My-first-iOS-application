#import "SixthThreeViewController.h"

@implementation SixthThreeViewController
-(IBAction)changeseven {
	SeventhViewController *sete = [[SeventhViewController alloc] initWithNibName:nil bundle:nil];
	sete.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:sete animated:NO];						
	[sete release];
}
-(IBAction)alertasetres {
	UIAlertView *alerta67 = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
												   message:@"You made five points. Pay more attention next time!" 
												  delegate:self
										 cancelButtonTitle:nil
										 otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[alerta67 show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltseisdois = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltseisdois.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltseisdois animated:YES];
		[voltseisdois release];
	}	
}
@end
