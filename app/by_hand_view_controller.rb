class ByHandViewController < MainViewController

  def viewDidLoad
    super
    setupNavigationBar()
    setupForm()
  end

  def setupNavigationBar
    frame = view.frame
    frame.origin.y = 0
    frame.size.height = 44
    navbar = UINavigationBar.alloc.initWithFrame(frame)
    navbar.autoresizingMask = UIViewAutoresizingFlexibleWidth
    navbar.tintColor = UIColor.colorWithRed(0.5, green:0.0, blue:0.0, alpha:1.0)
    view.addSubview(navbar)

    navItem = UINavigationItem.alloc.initWithTitle('By Hand')
    navbar.items = [navItem]

    navItem.leftBarButtonItem = UIBarButtonItem.alloc.initWithImage(UIImage.imageNamed('list'), style:UIBarButtonItemStyleBordered, target:self, action:'revealMenu:')
  end

  def setupForm
    label = UILabel.alloc.initWithFrame [[20, 64], [0, 0]]
    label.text = 'Name:'
    label.font = UIFont.boldSystemFontOfSize(UIFont.systemFontSize)
    label.sizeToFit
    view.addSubview label

    frame = label.frame
    frame.origin.x = CGRectGetMaxX(frame) + 15
    frame.origin.y -= 5
    frame.size.width = CGRectGetWidth(view.frame) - CGRectGetMaxX(label.frame) - (15 * 2)
    frame.size.height = 30
    field = UITextField.alloc.initWithFrame frame
    field.borderStyle = UITextBorderStyleRoundedRect
    field.delegate = self
    field.enablesReturnKeyAutomatically = true
    field.autocapitalizationType = UITextAutocapitalizationTypeWords
    field.autocorrectionType = UITextAutocorrectionTypeNo
    field.clearButtonMode = UITextFieldViewModeWhileEditing
    view.addSubview field
  end

  def textFieldShouldReturn(textField)
    textField.resignFirstResponder
    false
  end

end
