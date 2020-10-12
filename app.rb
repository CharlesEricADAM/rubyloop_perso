# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require
# require pry
# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'

# julie = User.new("julie@gmail.com", 30)
# tata = User.new("tata@gmail.com", 30)
# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

# my_event = Event.new("2010-10-31 12:00", 30, "Meeting", ["jean@email.com", "marc@email.com"])

# julie = User.find_by_email("julie@gmail.com")
# print julie.email

my_event = EventCreator.new
my_event.questions





# Si initialize a des paramètres, alors mettre les paramas dans EventCreator.new