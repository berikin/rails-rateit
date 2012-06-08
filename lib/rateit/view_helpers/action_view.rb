module Rateit
  module ViewHelpers
    module ActionView
      def rateit_tag(options = {})
        tag_options = {:class => "rateit"}
        options.each do |name, value|
          tag_options["data-rateit-#{name}"] = value
        end
        
        content_tag(:div, "", tag_options)
      end
    end
  end
end
