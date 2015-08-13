class Contact

  @@contacts = []

  def initialize(last_name, first_name, phone_number)
    @last_name = last_name
    @first_name = first_name
    @phone_number = phone_number
  end

  def last_name
    @last_name
  end

  def first_name
    @first_name
  end

  def phone_number
    @phone_number
  end
end
