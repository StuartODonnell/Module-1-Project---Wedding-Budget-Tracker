require_relative( '../db/sql_runner' )

class Item

def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @value = options['value'].to_i
    # @vendor_id = XXXXXXXXXXXXX
    # @category_id = XXXXXXXXXXXXX
end

end
