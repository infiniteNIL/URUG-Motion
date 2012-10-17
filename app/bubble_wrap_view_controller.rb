class BubbleWrapViewController < MainViewController

  attr_accessor :tableView

  def viewDidLoad
    super
    @pages = []
  end

  def viewDidAppear(animated)
    super

    @pages = []
    SVProgressHUD.showWithStatus 'Loading Pages…'

    BubbleWrap::HTTP.post("https://artorius.backpackit.com/ws/pages/all",
                          payload: {token: '0a5207f2adc84c7fbf8981cf05137ffa35e67179'}) do |response|
      rootXML = RXMLElement.elementFromXMLData(response.body)
      rootXML.iterate("pages.page", usingBlock:lambda do |e|
        attributes = Hash[[:title, :scope, :id].map {|name| [name, e.attribute(name.to_s)]}]
        @pages << BackpackPage.new(attributes)
      end)

      SVProgressHUD.dismiss
      tableView.reloadData
    end
  end

  def tableView(aTableView, numberOfRowsInSection:section)
    @pages.length
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    reuseIdentifier = "CELL_IDENTIFIER"

    cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:reuseIdentifier)
    end

    cell.textLabel.text = @pages[indexPath.row].title
    cell
  end

end
