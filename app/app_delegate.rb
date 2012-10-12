class AppDelegate

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @storyboard = UIStoryboard.storyboardWithName("MainStoryboard", bundle:nil)
    rootVC = @storyboard.instantiateViewControllerWithIdentifier("Main")
    @window.rootViewController = rootVC

    setupSlidingViewController
    @window.makeKeyAndVisible
    true
  end

  def setupSlidingViewController
  	welcomeVC = @storyboard.instantiateViewControllerWithIdentifier('Welcome')
  	@window.rootViewController.topViewController = welcomeVC
  end

end
