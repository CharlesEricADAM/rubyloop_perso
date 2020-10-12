require 'time'

class EventCreator
  attr_accessor :start_date, :duration, :title, :attendees

  # def initialize(date, duration, title, attendees)
  #   @start_date = Time.parse(date)
  #   @duration = duration
  #   @title = title
  #   @attendees = attendees
  #   @@all_users.push(self)
  # end

  def ask_title
    puts "Salut, tu veux créer un événement ? Cool !" 
    puts "Commençons. Quel est le nom de l'événement ?"
    print "> " 
    @title = gets.chomp
  end

  def ask_date
    puts "Super. Quand aura-t-il lieu ?"
    print "> " 
    @start_date = gets.chomp 
  end

  def ask_duration
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print " > " 
    @duration = gets.chomp 
  end

  def ask_attendees
    puts "Génial. Qui va participer ? Balance leurs e-mails"
    print " > " 
    @attendees = gets.chomp
  end

  def questions
    ask_title
    ask_date
    ask_duration
    ask_attendees
    tmpname = Event.new(@start_date, @duration, @title, @attendees)
    tmpname.to_s
  end

end
# binding.pry