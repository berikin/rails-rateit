# Rails RateIt [![Gem Version](https://badge.fury.io/gh/berikin%2Frails-rateit.svg)](https://badge.fury.io/gh/berikin%2Frails-rateit.svg)[![Build Status](https://travis-ci.org/berikin/rails-rateit.svg?branch=v1.0.22)](https://travis-ci.org/berikin/rails-rateit)
Rails wrapper for the jQuery RateIt plugin

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-rateit'
```

and run `bundle install`.

Or install it yourself as:

```ruby
gem install rails-rateit
```

## Usage

In your `application.css`, include the css file:

```css
/*
 *= require rateit
 */
```

In your `application.js`, include the js file:

```js
//= require jquery.rateit
```

Or simply the javascript and stylesheets:

```bash
rails generate rateit:install
```

In you view, use the rateit_tag helper :

```ruby
<%= number_field_tag(:rating, nil, {min: 0, max: 4, step: 1, id: "my_object_rating"}) %>
<%= rateit(extra: {:"data-foo" => "bar"}, type: "div", backingfld: "#my_object_rating", max: 4, min: 0, step: 1, resetable: "false") %>


<%= number_field_tag(:rating, 4, {min: 0, max: 10, step: 1, id: "my_object_rating2"}) %>
<%= rateit(type: "span", backingfld: "#my_object_rating2", max: 10, min: 0, step: 0.5, resetable: "true", value: "2", ispreset: "true") %>

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

