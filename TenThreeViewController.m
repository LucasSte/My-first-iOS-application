#import "TenThreeViewController.h"

@implementation TenThreeViewController
-(IBAction)idiot {
	UIAlertView *nidiot= [[UIAlertView alloc] initWithTitle:@"You`re not a complete idiot!"
													message:@"Now, you`re an idiot and you made ten points till now!" 
												   delegate:self
										  cancelButtonTitle:nil
										  otherButtonTitles:@"Continue", nil];
	nidiot.tag=1;
	[nidiot show];
}

-(IBAction)falhou {
	UIAlertView *mesdt= [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
													message:@"You made nine points. Pay more attention next time!" 
												   delegate:self
										  cancelButtonTitle:nil
										  otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	mesdt.tag=2;
	[mesdt show];
}
-(void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (actionSheet.tag==1) {
		iUmViewController *midiot = [[iUmViewController alloc] initWithNibName:nil bundle:nil];
		midiot.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
		[self presentModalViewController:midiot animated:YES];
		[midiot release];
	}
	else if (actionSheet.tag==2) {
		IdiotDetectionViewController *vdezt = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		vdezt.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:vdezt animated:YES];
		[vdezt release];
	}	
}
@end
