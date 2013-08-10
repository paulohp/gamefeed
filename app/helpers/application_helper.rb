module ApplicationHelper
  def resource_name
    :competitor
  end
 
  def resource
    @resource ||= Competitor.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:competitor]
  end
end
