class Application

  def run
    # input = ""
    # while input != "quit"
    begin
      show_main_menu
      input = gets.chomp.downcase
      evaluate_input(input)
    end until input == "quit"
  end

  private

  # Prints the main menu only
  def show_main_menu
    puts "Welcome to the app. What's next?"
    puts " new      - Create a new contact"
    puts " list     - List all contacts"
    puts " find     - Find by name"
    puts " quit     - Exit Application"
    print "> "
  end

  def evaluate_input(input)
      case
      when input == "new"
        get_contact_details
      when input == "list"
        view_all
      when input == "find"
        Contact.find(get_contact_name)

      when input == "quit"
        "Thank you for using the contact list"
      else
          "This is not a valid input. Please try again"
      end
    end
  end

  def view_all
    Contact.all.each do |contact|
      puts "Contact Name: #{contact.first_name} #{contact.last_name} Contact Email:#{contact.email} Contact Phone Number: #{contact.phone_number}"
    end
  end

  # def show_contact
  #   Contact.
  # end

  def get_contact_name
    puts "Please enter the contact first name:"
    gets.chomp
  end

  def get_contact_details
    first_name = get_contact_name
    puts "Please enter the contact last name:"
    last_name = gets.chomp
    puts "Please enter the contact email:"
    email = gets.chomp
    puts "Please enter the contact phone number:"
    phone_number = gets.chomp

    Contact.create(first_name, last_name, email, phone_number)
end
