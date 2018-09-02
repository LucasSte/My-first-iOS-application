#import "NineTwoViewController.h"

@implementation NineTwoViewController
-(IBAction)muddez {
	TenViewController *dez = [[TenViewController alloc] initWithNibName:nil bundle:nil];
	dez.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:dez animated:NO];						
	[dez release];
}
-(IBAction)mesndo {
	UIAlertView *mesnovd = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
													 message:@"You made eight points. Pay more attention next time!" 
													delegate:self
										   cancelButtonTitle:nil
										   otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[mesnovd show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *vnovd = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		vnovd.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:vnovd animated:YES];
		[vnovd release];
	}	
}
@end
