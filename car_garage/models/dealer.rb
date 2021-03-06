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

  def save()
    sql = "INSERT INTO dealerships (name, address1, make) VALUES ('#{name}', '#{address1}', '#{make}') RETURNING *"
    dealer = SqlRunner.run(sql).first
    result = Dealer.new(dealer)
    return result
  end

  def update()
    sql = "UPDATE dealerships SET
    name = '#{@name}',
    address1 = '#{@address1}'
    make = '#{@make}'
    WHERE id  = #{id};"
  end

  def delete()
    sql = "DELETE FROM dealerships WHERE id = '#{id}';"
    return self
  end

  def self.all()
    sql = "SELECT * FROM dealerships ORDER BY id;"
    return Dealer.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM dealerships"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
    dealerships = SqlRunner.run( sql )
    result = dealerships.map { |dealer| Dealer.new(dealer) }
    return result
  end

  def self.map_item(sql)
    result = Dealer.map_items(sql)
    return result.first
  end

end