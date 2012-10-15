class MenuViewController < UITableViewController

	def viewDidLoad
		super
		@menuIDs = ['Welcome', 'Nib', 'ByHand']
	end

	def	tableView(tableView, didSelectRowAtIndexPath:indexPath)
  	identifier = @menuIDs[indexPath.row]
 		newTopViewController = storyboard.instantiateViewControllerWithIdentifier identifier

	  slidingViewController.anchorTopViewOffScreenTo(ECRight, animations:nil, onComplete:lambda {
	    frame = slidingViewController.topViewController.view.frame;
	    slidingViewController.topViewController = newTopViewController;
	    newTopViewController.view.frame = frame
	    newTopViewController.slidingViewController.resetTopView
	  })
	end

end
