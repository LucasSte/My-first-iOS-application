#import "FinalViewController.h"

@implementation FinalViewController
-(IBAction)recomecar {
	IdiotDetectionViewController *recomecar = [[IdiotDetectionViewController alloc] initWithNibName:nil bundle:nil];
	recomecar.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:recomecar animated:YES];
	[recomecar release];
}	
@end
