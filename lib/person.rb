# your code goes here
class Person
  attr_accessor :bank_account, :happiness, :hygiene, :salary
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account
    @balance
  end

  def happiness
    if @happiness < 0
      0
    elsif @happiness > 10
      10
    else
      @happiness
    end
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
  end

  def hygiene
    if @hygiene < 0
      0
    elsif @hygiene > 10
      10
    else
      @hygiene
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @balance += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  friend = Person.new("Felix")
  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
    
end
