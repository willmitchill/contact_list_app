class Contact

  ## In-memory list of contacts
  @@contacts = []


  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :email
  attr_accessor :phone_number

  def initialize(first_name, last_name, email, phone_number)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone_number = phone_number
  end

  # def to_s
  # end

  ## Class Methods


  def self.create(first_name, last_name, email, phone_number)
    @@contacts << Contact.new(first_name, last_name, email, phone_number)
  end

  def self.find(first_name)
    @@contacts.select do |contact|
      if contact.first_name == first_name
        puts "Contact Name: #{contact.first_name} #{contact.last_name} Contact Email:#{contact.email} Contact Phone Number: #{contact.phone_number}"
      else
        puts "No contacts match your query"
      end
    end
  end

  def self.all
    @@contacts
  end

end
