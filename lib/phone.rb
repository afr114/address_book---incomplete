class Phone

  @@phones = []
    
    attr_reader(:area_code, :number, :type, :phone_id)
    
  def initialize(area_code, phone_number, type)
    @area_code = area_code
    @number = number
    @type = type
    @phone_id = @@phones.length().+(1)
  end

  def phone_save
    @@phones.push(self)
  end

  define_singleton_method(:all) do
    @@phones
  end

  define_singleton_method(:clear) do
    @@phones = []
  end

  define_singleton_method(:phone_find) do |phone_indentify|
    found_phone = nil
    @@phones.each do |phone|
    if phone.phone_id() == phone_indentify.to_i()
      found_phone = phone
      end
    end
    found_phone
  end

end #end class
