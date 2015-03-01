module Rateit
  module ViewHelpers
    module ActionView
      def rateit(options = {}, tag_options = {})
        classes = ["rateit"]
        classes.concat Array(options.delete(:class))
        type = options.delete(:type)

        options2 = {}
        tag_options.each do |name, value|
          options2["data-rateit-#{name}"] = value
        end
        options2["class"] = classes
        if type.blank? || type == "div"
          output = content_tag(:div, nil, options.merge(options2))
        else
          output = content_tag(:span, nil, options.merge(options2))
        end
        output
      end
    end
  end
end
