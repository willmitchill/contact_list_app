require 'rspec'
require_relative 'contact'


describe Contact do

  describe "initialization" do
    it "should initilaize a new instance of a contact"

  end

  describe "#to_s" do

  end

  # use . for class methods
  describe ".create" do
    it "shoult create a new instance of a contact" do
      contact = Contact.create(name, email, phone_number)
      contact.should be_an_instance_of(Contact)
    end
  end

  # use . for class methods
  describe ".find" do

  end

  # use . for class methods
  describe ".all" do

  end

end
