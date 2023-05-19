class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicles, :collected_fees

  def initialize(obj)
    @name = obj[:name]
    @address = obj[:address]
    @phone = obj[:phone]
    @services = []
    @registered_vehicles = []
    @collected_fees = 0
  end

  def add_service(service)
    @services << service
  end

  def register_vehicle(vehicle)
    @registered_vehicles << vehicle

    if vehicle.antique?
      @collected_fees += 25
    elsif vehicle.electric_vehicle?
      @collected_fees += 200
    else
    @collected_fees += 100
    end
  end


  def administer_written_test(registrant)

  end

end
