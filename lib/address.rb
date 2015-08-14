class Address

  @@address = []
    
  attr_reader(:street_address, :city, :state, :zip, :address_id, :type)
    
  def initialize(street_address, city, state, zip)
    @street_address = street_address
    @city = city
    @state = state
    @zip = zip
    @type = type
    @address_id = @@address_info.length.+(1)
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

  define_singleton_method(:address_find) do |address_identify|
    found_address = nil
    @@address.each() do |address|
      if address.address_id() == address_identify.to_i
        found_address = address
      end
    end
    found_address
  end

end #end class
