require_relative('../db/sql_runner')
require_relative('./dealer')

class Car

  def initialize(options)
    @id = options['id'].to_i
    @model = options['model']
    @fuel = options['fuel']
    @engine = options['engine']
    @transmission = options['transmission']
    @picture = options['picture']
    @dealer_id = options['dealer_id'].to_i
  end

  
end