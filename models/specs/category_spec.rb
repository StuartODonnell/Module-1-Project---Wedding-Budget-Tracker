require("minitest/autorun")
require("minitest/rg")
require_relative("../category.rb")

class CategorySpec < MiniTest::Test

  def test_category_name()
    name = @name
    assert_equal(@name, name)
 end

def test_save()
name = @name
id = @id
assert_equal(@name = name, @id = id)
end

# def test_delete_all
#
#
#
# end
