require_relative( "../models/item.rb" )
require_relative( "../models/vendor.rb" )
require_relative( "../models/category.rb" )
require("pry-byebug")

# Item.delete_all()
Vendor.delete_all()
Category.delete_all()

# item1 = Item.new({
#
#     "name" => "bouquet",
#     "cost" => 150
#
#     })
#
# item2 = Item.new({
#
#     "name" => "dinner",
#     "cost" => 800
#
#     })
#
# item1.save()
# item2.save()

vendor1 = Vendor.new({

    "name" => "Flowers-R-Us"

    })


vendor2 = Vendor.new({

    "name" => "Meals-R-Us"

    })

vendor1.save()
vendor2.save()

category1 = Category.new({

    "name" => "flowers"

    })

category2 = Category.new({

    "name" => "food"

    })

category1.save()
category2.save()


binding.pry
nil
