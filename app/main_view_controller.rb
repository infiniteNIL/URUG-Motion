class MainViewController < UIViewController

	def viewDidLoad
		super

    slidingViewController.underLeftViewController = storyboard.instantiateViewControllerWithIdentifier('Menu')
    view.addGestureRecognizer(slidingViewController.panGesture)
    slidingViewController.setAnchorRightRevealAmount 280.0

    view.layer.shadowOpacity = 0.75
    view.layer.shadowRadius = 10.0
    view.layer.shadowColor = UIColor.blackColor.CGColor;
	end

  def revealMenu(sender)
 	  slidingViewController.anchorTopViewTo ECRight
  end

end
