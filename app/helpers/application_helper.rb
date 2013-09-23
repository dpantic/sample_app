module ApplicationHelper
  #return the full title on a per-page basis
  def full_title(page_title)  #Method definition
    base_title = "Ruby on Rails Sample App" #Variable assignment
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
