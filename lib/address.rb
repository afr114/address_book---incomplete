class Address

  @@address_info = []

  def initialize(street_address, city, state, zip)
    @street_address = street_address
    @city = city
    @state = state
    @zip = zip
    @address_id = @@address_info.length.+(1)
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

  def address_save
    @@address_info.push(self)
  end

  define_singleton_method(:all_address) do
    @@address_info
  end

  define_singleton_method(:address_clear) do
    @@address_info = []
  end

  def address_id
    @address_id
  end

  define_singleton_method(:address_find) do |address_identify|
    found_address = nil
    @@address_info.each() do |address|
      if address.address_id() == address_identify.to_i
        found_address = address
      end
    end
    found_address
  end

end #end class
