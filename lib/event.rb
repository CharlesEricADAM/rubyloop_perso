require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees
  @@all_users = []

  def initialize(date, duration, title, attendees)
    @start_date = Time.parse(date)
    @duration = duration
    @title = title
    @attendees = attendees
    @@all_users.push(self)
  end

  def to_s
    puts "> #{@title}"
    puts "> #{@start_date}"
    puts "> #{@duration}"
    puts "> #{@attendees}"
  end
  
  def postpone_24h
    start_date = start_date + 24*60*60 
  end

  def end_date
    start_date + @duration
  end

  def is_past?
    start_date < Time.now
  end

  def is_soon?
    start_date < start_date + 30
  end

end