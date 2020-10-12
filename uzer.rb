require "pry"

class User
  attr_writer :mastercard
  attr_reader :birthdate
  attr_accessor :email

  def greet
    puts "Bonjour, monde!"
  end

  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name}!"
  end

  def show_itself
    print "Voici l'instance: "
    puts self
  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    return @email
  end

  def read_mastercard
    return @mastercard
  end

  def update_birthdate(birthdate_to_update)
    @birthdate = birthdate_to_update
  end

end

binding.pry
puts "end of file"

