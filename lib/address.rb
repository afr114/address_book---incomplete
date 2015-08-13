class Address

  @@address_info = []

  def initialize(street_address, city, state, zip)
    @street_address = street_address
    @city = city
    @state = state
    @zip = zip
  end

  def city
    @city
  end

  def state
    @state
  end

  def zip
    @zip
  end

  def street_address
    @street_address
  end
  

end #end class
