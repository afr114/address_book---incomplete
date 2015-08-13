require('rspec')
require('contact')

describe(Contact) do
  #
  # before() do
  #   Contact.clear()
  # end

  describe('#last_name') do
    it('returns the contact name') do
      test_contact = Contact.new("Smith","Adam", 1231231234)
      expect(test_contact.last_name()).to(eq("Smith"))
    end
  end
end
