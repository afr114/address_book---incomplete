class Contact

  @@contacts = []
    
    attr_reader(:first_name, :last_name, :job_title, :company, :contact_id )

    def initialize(first_name, last_name, job_title, company)
    @contact_id = @@contacts.length.+(1)
    @first_name = first_name
    @last_name = last_name
    @job_title = job_title
    @company = company  
    @phone = []
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

  define_singleton_method(:contact_find) do |indentify|
    found_contact = nil
    @@contacts.each() do |contact|
        if contact.contact_id().eql?(indentify.to_i())
        found_contact = contact
      end
    end
    found_contact
  end

  define_method(:add_phone) do |phone|
    @phones.push(phone)
  end
end #end class
