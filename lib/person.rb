# your code goes here
require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25.0
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    self.hygiene = 10 if self.hygiene > 10
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.happiness = 10 if self.happiness > 10

    self.hygiene -= 3
    self.hygiene = 0 if self.hygiene < 0

    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    self.happiness = 10 if self.happiness > 10

    friend.happiness += 3
    friend.happiness = 10 if friend.happiness > 10

    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(convo_person, topic)
    case topic
    when "politics"
      self.happiness -= 2
      self.happiness = 0 if self.happiness < 0

      convo_person.happiness -= 2
      convo_person.happiness = 0 if convo_person.happiness < 0

      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      self.happiness = 10 if self.happiness > 10

      convo_person.happiness += 1
      convo_person.happiness = 10 if convo_person.happiness > 10

      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
      

end