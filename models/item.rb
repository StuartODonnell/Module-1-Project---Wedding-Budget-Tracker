require_relative( '../db/sql_runner.rb' )
require_relative( './category.rb' )
require_relative( './vendor.rb' )

class Item

  attr_reader :id
  attr_accessor :name, :cost, :vendor_id, :category_id

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @cost = options['cost'].to_i
    @vendor_id = options['vendor_id'].to_i
    @category_id = options['category_id'].to_i
  end

  def item_name()
    return @name
  end

  def save()
    sql = "INSERT INTO items(name, cost, vendor_id, category_id) VALUES($1, $2, $3, $4) RETURNING *"
    values = [@name, @cost, @vendor_id, @category_id]
    item_data = SqlRunner.run(sql, values)
    @id = item_data.first()['id'].to_i
  end

  def self.delete_all
    sql = "DELETE FROM items"
    SqlRunner.run( sql )
  end

  def update()
    sql = "UPDATE items
    SET
    (
      name,
      cost,
      vendor_id,
      category_id
      ) =
      (
        $1, $2, $3, $4
      )
      WHERE id = $5"
      values = [@name, @cost, @vendor_id, @category_id, @id]
      SqlRunner.run( sql, values )
    end

    def delete()
      sql = "DELETE FROM items
      WHERE id = $1"
      values = [@id]
      SqlRunner.run( sql, values )
    end

    def self.all()
      sql = "SELECT * FROM items"
      items = SqlRunner.run( sql )
      result = items.map{ |item| Item.new( item ) }
      return result
    end

    # def total_spend()
    #   sql = "SELECT * FROM items"
    #   items = SqlRunner.run(sql)
    #   result = items.cost.sum{|item| Item.new (item)}
    # return result

    def self.total_spend
      total = 0
      items = Item.all
      for item in items
        total += item.cost
      end
      return total
    end





    # def self.all()
    #   sql = "SELECT * FROM items"
    #   item_data = SqlRunner.run(sql)
    #   items = map_items(item_data)
    #   return items
    # end
    #
    # def self.map_items(item_data)
    #     return item_data.map { |item| Item.new(item) }
    #   end

    def self.find(id)
      sql = "SELECT * FROM items
      WHERE id = $1"
      values = [id]
      result = SqlRunner.run(sql ,values).first
      item = Item.new(result)
      return item
    end

    def find_vendor()
    sql = "SELECT vendors.* FROM vendors INNER JOIN items ON vendors.id = items.vendor_id WHERE items.id = $1;"
    values = [@id]
    vendor_hash = SqlRunner.run(sql,values)
    result = vendor_hash.map{|vendor| Vendor.new(vendor)}
    return result.first
    # values = Vendor.find(@vendor_id)
    # return house
    end

    def find_category()
    sql = "SELECT categories.* FROM categories INNER JOIN items ON categories.id = items.category_id WHERE items.id = $1;"
    values = [@id]
    category_hash = SqlRunner.run(sql,values)
    result = category_hash.map{|category| Category.new(category)}
    return result.first
    end

  end
