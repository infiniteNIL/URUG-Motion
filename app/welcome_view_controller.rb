class WelcomeViewController < UIViewController

  def viewWillAppear(animated)
    super

    self.slidingViewController.underLeftViewController = self.storyboard.instantiateViewControllerWithIdentifier('Menu')
    self.view.addGestureRecognizer(self.slidingViewController.panGesture)
    self.slidingViewController.setAnchorRightRevealAmount 280.0

    view.layer.shadowOpacity = 0.75
    self.view.layer.shadowRadius = 10.0
    self.view.layer.shadowColor = UIColor.blackColor.CGColor;
  end

  def revealMenu(sender)
 	  self.slidingViewController.anchorTopViewTo ECRight
  end

end
