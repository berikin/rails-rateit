module Rateit
  module ViewHelpers
    module ActionView
      def rateit(options = {})
        classes = ["rateit"]
        classes.concat Array(options.delete(:class))
        type = options.delete(:type)
        extra = options.delete(:extra)

        options_export = {}
        options.each do |name, value|
          options_export["data-rateit-#{name.to_s.strip}"] = value
        end
        options_export["class"] = classes
        if type.blank? || type == "div"
          output = content_tag(:div, nil, options_export.merge(extra))
        else
          output = content_tag(:span, nil, options_export.merge(extra))
        end
        output
      end
    end
  end
end
