require('pg')
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

  def save()
    sql = "INSERT INTO cars (model, fuel, engine, transmission, picture, dealer_id) VALUES ('#{@model}', '#{@fuel}', '#{@engine}', '#{@transmission}', '#{@picture}', #{@dealer_id}) RETURNING *;"
    car = SqlRunner.run(sql).first
    result = Car.new(car)
    return result
  end

  def update()
    sql = "UPDATE cars SET
    model = '#{@model}',
    fuel = '#{@fuel}',
    engine = '#{@engine}',
    transmission = '#{@transmission}',
    picture = '#{@picture}'
    WHERE id = #{id};"
  end

  def delete()
    sql = "DELETE FROM cars WHERE id = '#{@id}';"
    return self
  end

  def self.all()
    sql = "SELECT * FROM cars ORDER BY model;"
    result = cars.map { |car| Car.new(car) }
    return result
  end

end