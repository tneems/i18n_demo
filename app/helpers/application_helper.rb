module ApplicationHelper
  def title
    if content_for?(:title)
      content_for(:title)
    else
      t(:default_title)
    end
  end
end
