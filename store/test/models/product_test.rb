require "minitest_helper"

class ProductTest < MiniTest::Unit::TestCase
  def test_to_param
    product = Product.create!(name: "Hello World")
    assert_equal "#{product.id}-hello-world", product.test_to_param
  end
end
