module ApplicationHelper

  def full_title(page_title)
    base_title = "CMSC424 Web Project - CourseHelper"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
