require("minitest/autorun")
require("minitest/rg")
require_relative("../vendor.rb")

class VendorSpec < MiniTest::Test

  def test_vendor_name()
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
end
