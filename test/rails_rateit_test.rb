require 'test_helper'

class RailsRateitTest < ActionDispatch::IntegrationTest

  test "Load engine" do
    assert_equal ::Rails::Engine, Rateit::Rails::Engine.superclass
  end

  test "Images found" do
    get "/assets/clear.svg"
    assert_response :success
    get "/assets/stars.svg"
    assert_response :success
  end

  test "Stylesheet found" do
    get "/assets/rateit.css.erb"
    assert_rateit(response)
  end

  test "JavaScript found" do
    get "/assets/jquery.rateit.js"
    assert_rateit(response)
  end

  test "Stylesheet is available in a css sprockets require" do
    get "/assets/sprockets-require.css"
    assert_rateit(response)
  end

  test "Stylesheet is available in a sass import" do
    get "/assets/sass-import.css"
    assert_rateit(response)
  end

  test "Stylesheet is available in a scss import" do
    get "/assets/scss-import.css"
    assert_rateit(response)
  end

  test "JavaScript is available in a JS require" do
    get "/assets/javascript-require.js"
    assert_rateit(response)
  end

  test "helpers should be available in the view" do
    get "/stars"
    assert_response :success
    assert_select "div.rateit"
    assert_select "span.rateit"
  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
  end

  def assert_rateit(response)
    assert_response :success
    assert_match(/.rateit/, response.body)
  end
end
