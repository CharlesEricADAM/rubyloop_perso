class User
  attr_accessor :email, :age
  @@all_users = []

  def initialize(email, age)
    @email = email
    @age = age
    @@all_users.push(self)
  end

  def self.all
    return @@all_users
  end

  def self.find_by_email(email)
    @@all_users.each do |user|
      if email == user.email
        return user
      else
        return "email isn't matching"
      end
    end
  end
end