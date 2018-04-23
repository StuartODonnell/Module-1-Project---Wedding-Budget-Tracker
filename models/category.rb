require_relative( '../db/sql_runner' )

class Category

attr_reader :name, :id

def initialize( options )

    @id = options['id'].to_i if options['id']
    @name = options['name']

  end

  def category_name
    return @name
  end

def save()
      sql = "INSERT INTO categories
      (
        name

      )
      VALUES
      (
        $1
      )
      RETURNING *"
      values = [@name]
      category_data = SqlRunner.run(sql, values)
      @id = category_data.first()['id'].to_i
    end

  def self.delete_all
    sql = "DELETE FROM categories"
    SqlRunner.run( sql )
  end

end
