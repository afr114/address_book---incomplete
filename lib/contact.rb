class Contact

  @@contacts = []

  def initialize(last_name, first_name, phone_number)
    @last_name = last_name
    @first_name = first_name
    @phone_number = phone_number
    @contact_id = @@contacts.length.+(1)
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

  def save
    @@contacts.push(self)
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  def contact_id
    @contact_id
  end

  define_singleton_method(:contact_find) do |indentify|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.contact_id() == indentify.to_i
        found_contact = contact
      end
    end
    found_contact
  end

end #end class
