require_relative( '../db/sql_runner' )

class Vendor

attr_reader :name, :id

  def initialize( options )

    @id = options['id'].to_i if options['id']
    @name = options['name']

  end

  def vendor_name
    return @name
  end

  def save()
    sql = "INSERT INTO vendors
    (
      name

    )
    VALUES
    (
      $1
    )
    RETURNING *"
    values = [@name]
    vendor_data = SqlRunner.run(sql, values)
    @id = vendor_data.first()['id'].to_i
  end

  def self.delete_all
    sql = "DELETE FROM vendors"
    SqlRunner.run( sql )
  end

end
