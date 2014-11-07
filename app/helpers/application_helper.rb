module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Newsfeed"      
    end
  end
end
