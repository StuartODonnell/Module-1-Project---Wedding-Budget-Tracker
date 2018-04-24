require_relative( '../db/sql_runner' )

class Vendor
attr_accessor :name
attr_reader :id

  def initialize( options )

    @id = options['id'].to_i if options['id']
    @name = options['name']

  end

  def vendor_name
    return @name
  end

  def save()
    sql = "INSERT INTO vendors(name)VALUES($1)RETURNING *"
    values = [@name]
    vendor_data = SqlRunner.run(sql, values)
    @id = vendor_data.first()['id'].to_i
  end

  def self.delete_all
    sql = "DELETE FROM vendors"
    SqlRunner.run( sql )
  end

  def update()
    sql = "UPDATE vendors
    SET
    (
      name
      ) =
      (
        $1
      )
      WHERE id = $2"
      values = [@name]
      SqlRunner.run( sql, values )
    end

    def delete()
      sql = "DELETE FROM vendors
      WHERE id = $1"
      values = [@id]
      SqlRunner.run( sql, values )
    end

    def self.all()
        sql = "SELECT * FROM vendors"
        vendors = SqlRunner.run( sql )
        result = vendors.map { |vendor| Vendor.new( vendor ) }
        return result
      end


      def self.find(id)
        sql = "SELECT * FROM vendors
        WHERE id = $1"
        values = [id]
        result = SqlRunner.run(sql ,values).first
        vendor = Vendor.new(result)
        return vendor
      end


end
