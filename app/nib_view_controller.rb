class NibViewController < MainViewController

  attr_accessor :label

	def showNib(sender)
		vc = ModalNibViewController.new
		presentViewController(vc, animated:true, completion:nil)
    @label.textColor = UIColor.redColor;
	end

end
