# frozen_string_literal: true

module ApplicationHelper
  def page_title
    "Beauty Master Kseniya | #{controller_name.humanize}"
  end

  def body_class
    "#{controller_name}-#{action_name}"
  end
end
