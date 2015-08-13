require('rspec')
require('contact')
require('address')

describe(Contact) do

  before() do
    Contact.clear()
  end

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

  describe('#contact_id') do
    it('saves user entry as number into array') do
      test_contact = Contact.new("Smith", "Adam", 1234567896)
      test_contact.save()
      expect(test_contact.contact_id()).to(eq(1))
    end
  end

  describe('.contact_find') do
    it("returns the contact id") do
      test_contact = Contact.new("Smith", "Adam", 1234567896)
      test_contact.save()
      test_contact2 = Contact.new("Marx", "Karl", 1234567897)
      expect(Contact.contact_find(test_contact.contact_id())).to(eq(test_contact))
    end
  end
end

describe(Address) do

  describe('#city') do
    it('returns city that contact lives in') do
      test_address = Address.new("635 way road", "Barcelona", "New Jersey", 10231)
      expect(test_address.city()).to(eq("Barcelona"))
    end
  end





end
