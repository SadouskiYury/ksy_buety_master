# frozen_string_literal: true

module ApplicationHelper
  def page_title
    "Beauty Master Kseniya | #{controller_name.humanize}"
  end

  def body_class
    "#{controller_name}-#{action_name}"
  end

  def nav_link_class(section, extra = nil)
    if section == controller_name
      "bg-pinki items-center text-xs uppercase text-black px-6 py-3 rounded-md font-medium #{extra}"
    else
      "uppercase items-center text-xs text-black hover:bg-pinki hover:opacity-50 hover:text-white px-6 py-3 rounded-md text-sm font-medium #{extra}"
    end
  end
end
