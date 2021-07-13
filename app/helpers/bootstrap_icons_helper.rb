# frozen_string_literal: true

module BootstrapIconsHelper
  def bi_icon(icon, text: nil, orientation: :left, color: nil)
    style = color.nil? ? nil : " style=\"color: #{color};\""
    case orientation
    when :right then "#{text} <i class=\"bi bi-#{icon}\"#{style}></i>".strip.html_safe
    else
      "<i class=\"bi bi-#{icon}\"#{style}></i> #{text}".strip.html_safe
    end
  end
end
