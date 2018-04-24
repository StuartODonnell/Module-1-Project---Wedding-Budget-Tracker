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

vendor4 = Vendor.new({

    "name" => "Bands-R-Us"

    })

vendor5 = Vendor.new({

    "name" => "Balloons-R-Us"

    })

vendor6 = Vendor.new({

    "name" => "Favours-R-Us"

    })

vendor7 = Vendor.new({

    "name" => "Buses-R-Us"

    })

vendor8 = Vendor.new({

    "name" => "Cakes-R-Us"

    })

vendor9 = Vendor.new({

    "name" => "Outfits-R-Us"

    })

vendor10 = Vendor.new({

    "name" => "Other"

    })


vendor1.save()
vendor2.save()
vendor3.save()
vendor4.save()
vendor5.save()
vendor6.save()
vendor7.save()
vendor8.save()
vendor9.save()
vendor10.save()


category1 = Category.new({

    "name" => "flowers"

    })

category2 = Category.new({

    "name" => "food"

    })

category3 = Category.new({

    "name" => "jewellery"

    })

category4 = Category.new({

    "name" => "entertainment"

    })

category5 = Category.new({

    "name" => "decoration"

    })

category6 = Category.new({

    "name" => "food"

    })

category7 = Category.new({

    "name" => "gifts"

    })

category8 = Category.new({

    "name" => "outfits"

    })

category9 = Category.new({

    "name" => "transport"

    })

category10 = Category.new({

    "name" => "other"

    })

category1.save()
category2.save()
category3.save()
category4.save()
category5.save()
category6.save()
category7.save()
category8.save()
category9.save()
category10.save()

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
