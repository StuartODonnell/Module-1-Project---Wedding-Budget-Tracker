require_relative( "../models/item.rb" )
require_relative( "../models/vendor.rb" )
require_relative( "../models/category.rb" )
require("pry-byebug")

Item.delete_all()
Vendor.delete_all()
Category.delete_all()

vendor1 = Vendor.new({

    "name" => "Flowers-R-Us"

    })


vendor2 = Vendor.new({

    "name" => "Meals-R-Us"

    })

vendor3 = Vendor.new({

    "name" => "Rings-R-Us"

    })
vendor1.save()
vendor2.save()
vendor3.save()

category1 = Category.new({

    "name" => "flowers"

    })

category2 = Category.new({

    "name" => "food"

    })

category3 = Category.new({

    "name" => "jewellery"

    })
category1.save()
category2.save()
category3.save()

item1 = Item.new({

    "name" => "bouquet",
    "cost" => 150,
    "vendor_id" => vendor1.id,
    "category_id" => category1.id

    })

item2 = Item.new({

    "name" => "dinner",
    "cost" => 800,
    "vendor_id" => vendor2.id,
    "category_id" => category2.id

    })

item3 = Item.new({

    "name" => "wedding rings",
    "cost" => 1000,
    "vendor_id" => vendor3.id,
    "category_id" => category3.id

        })

item4 = Item.new({

    "name" => "evening buffet",
    "cost" => 300,
    "vendor_id" => vendor2.id,
    "category_id" => category2.id

                })

item1.save()
item2.save()
item3.save()
item4.save()



binding.pry
nil
