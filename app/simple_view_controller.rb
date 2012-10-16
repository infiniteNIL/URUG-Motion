class SimpleViewController < MainViewController
  include SimpleView::Layout

  def viewDidLoad
    navItem = UINavigationItem.alloc.initWithTitle('SimpleView')
    navItem.leftBarButtonItem = UIBarButtonItem.alloc.initWithImage('list'.to_image, style:UIBarButtonItemStyleBordered, target:self, action:'revealMenu:')

    SimpleView::Styles.define UILabel,
      font: "bold 17"

    setup view, controller: self do
      add UINavigationBar, tintColor: '#7f0000'.to_color, items: [navItem]

      label text: 'Name:', top: 64, left: 20

      text_field top: 64 - 4, left: 90, right: 20, height: 30, do
        view.borderStyle = UITextBorderStyleRoundedRect
        view.delegate = controller
        view.enablesReturnKeyAutomatically = true
        view.autocapitalizationType = UITextAutocapitalizationTypeWords
        view.autocorrectionType = UITextAutocorrectionTypeNo
        view.clearButtonMode = UITextFieldViewModeWhileEditing
      end
    end
  end

  def textFieldShouldReturn(textField)
    textField.resignFirstResponder
    false
  end

end
