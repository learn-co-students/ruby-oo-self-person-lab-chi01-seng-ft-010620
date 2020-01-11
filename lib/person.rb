# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    def name
        @name 
    end
    def bank_account
        @bank_account
    end
    def happiness=(num)
        @happiness = num 
        if @happiness > 10 
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end
    def hygiene=(num)
        @hygiene = num
        if @hygiene > 10 
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
    end
    end
    def happy?
        if @happiness < 8
            false
        else
            true
        end
    end
    def clean?
        if @hygiene < 8
            false
        else
            true
        end
    end
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath
       self.hygiene= (@hygiene += 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene= (@hygiene - 3)
        self.happiness= (@happiness + 2)
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness= (@happiness + 3)
        friend.happiness= (friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == 'politics' 
            self.happiness= (@happiness - 2)
            friend.happiness= (friend.happiness - 2)
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness= (@happiness + 1)
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            'blah blah blah blah blah'
        end
    end
end 