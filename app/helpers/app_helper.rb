module AppHelper
  # returns the full title, with or without title input
  def full_title(page_title = '')
    base_title = "ThankTank"
    if page_title.empty?
      base_title
    else
      base_title + " | " + page_title
    end
  end
end
