#import "iSeisViewController.h"

@implementation iSeisViewController
-(IBAction)mudisd {
	iSeisdoisViewController *ised = [[iSeisdoisViewController alloc] initWithNibName:nil bundle:nil];
	ised.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:ised animated:NO];						
	[ised release];
}	
@end
