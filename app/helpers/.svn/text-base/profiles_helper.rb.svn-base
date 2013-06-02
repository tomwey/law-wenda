#coding: utf-8
module ProfilesHelper
  def render_check_box_for_profile(name, profile, val, index, col = 4)
    html = content_tag :label, :class => "checkbox inline" do
      check_box_tag(name, val, profile.nodes.include?(val)).html_safe + "#{val}"
    end
    
    html += "<br>".html_safe if (index+1) % col == 0
    html.html_safe
  end
end