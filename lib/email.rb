class Email
    
  @@emails = []
    
  attr_reader = (:email_address, :type, :email_id)

  def initialize(email_address, type)
    @email_address = email_address
    @type = type
    @email_id = @@email.length().+(1)
  end
    
  def email_save
    @@email.push(self)
  end

  define_singleton_method(:all) do
    @@email
  end

  define_singleton_method(:clear) do
    @@email= []
  end

  define_singleton_method(:email_find) do |email_indentify|
    found_email = nil
    @@email.each do |email|
    if email.email_id() == email_indentify.to_i()
    found_email = email
      end
    end
    found_phone
  end
    
    
end #end class