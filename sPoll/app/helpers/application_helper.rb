module ApplicationHelper
  # Return a title on a per-page basis.
  def title
    base_title = "Simple Poll"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "Simple Poll", :class => "round")
  end
end
