require_relative('../db/sql_runner')
require_relative('./car')

class Dealer

  attr_accessor(:id, :name, :address1, :make)

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @address1 = options['address1']
    @make = options['make']
  end

end
