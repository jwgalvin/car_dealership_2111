class Dealership
  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []

  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if @inventory.length == 0
      false
    else
      true
    end
  end

  def cars_by_make(make)
    car_makes = []
    @inventory.each do |car|
      if car.make == make
        car_makes << car
      end
    end
    car_makes
  end

  def total_value
    total_value = 0
    @inventory.each do |car|
      total_value += car.total_cost
    end
    total_value
  end

  def details
    deats = Hash.new
    deats = { "total_value" => total_value, "address" => @address }
  end

  def average_price_of_car
    avg_price = total_value / @inventory.count
    avg_price.to_s
  end

  def cars_sorted_by_price
    @inventory.sort_by(&:total_cost)
  end

  def inventory_hash
    iHash = {"Toyota"=> [], "Ford" =>[], "Chevrolet" => []}
    @inventory.each do |car|
      iHash[car.make] << car
    end
    iHash
  end

end
