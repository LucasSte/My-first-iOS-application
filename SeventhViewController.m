#import "SeventhViewController.h"

@implementation SeventhViewController
-(IBAction)mudoito {
	EightViewController *oito = [[EightViewController alloc] initWithNibName:nil bundle:nil];
	oito.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:oito animated:NO];						
	[oito release];
}
-(IBAction)messete {
	UIAlertView *alerta7 = [[UIAlertView alloc] initWithTitle:@"You`re a complete idiot!"
													   message:@"You made six points. Pay more attention next time!" 
													  delegate:self
											 cancelButtonTitle:nil
											 otherButtonTitles:@"Try Again!", @"Tweet it!", nil];
	[alerta7 show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		IdiotDetectionViewController *voltsete = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
		voltsete.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
		[self presentModalViewController:voltsete animated:YES];
		[voltsete release];
	}	
}
@end
