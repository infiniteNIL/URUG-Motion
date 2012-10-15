class WelcomeViewController < MainViewController

  attr_accessor :label

  def unwindFromConfirmationForm(storyboard)
    @label.text = 'And your back'
  end

end
