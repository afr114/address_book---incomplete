require('rspec')
require('contact')

describe(Contact) do
  #
  # before() do
  #   Contact.clear()
  # end

  describe('#last_name') do
    it('returns the contact last name') do
      test_contact = Contact.new("Smith","Adam", 1231231234)
      expect(test_contact.last_name()).to(eq("Smith"))
    end
  end

  describe('#first_name') do
    it('returns the contact first name') do
      test_contact = Contact.new("Smith","Adam", 1231231234)
      expect(test_contact.first_name()).to(eq("Adam"))
    end
  end

  describe('#phone_number') do
    it('returns the contact phone number') do
      test_contact = Contact.new("Smith","Adam", 1231231234)
      expect(test_contact.phone_number()).to(eq(1231231234))
    end
  end

  describe('#save') do
    it('saves each contact entry') do
      test_contact = Contact.new('Smith', "Adam", 1231231324)
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe('.clear') do
    it('removes all contacts') do
      test_contact = Contact.new("Smith", "Adam", 1234567896)
      expect(Contact.clear()).to(eq([]))
    end
  end
end
