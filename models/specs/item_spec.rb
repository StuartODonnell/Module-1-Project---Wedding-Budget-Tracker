require("minitest/autorun")
require("minitest/rg")
require_relative("../item.rb")

class ItemSpec < MiniTest::Test

  def test_item_name()
    name = Item.new()
    assert_equal(@name, name)
 end

 def test_find_vendor()
   
 end

 def test_find_category

 end
# def test_save()
# id = @id
# name = @name
# cost = @cost
# vendor_id = @vendor_id
# category_id = @category_id
# assert_equal(@id = id, @name = name, @cost = name, @vendor_id = vendor_id, @category_id = category_id)
# end

# def test_delete_all
#
#
#
# end
end
