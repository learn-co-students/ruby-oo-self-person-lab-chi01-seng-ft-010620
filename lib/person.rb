# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene 
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
    end 
    def happiness
        # @happiness
        @happiness.clamp(0,10)
        # 0 <= @happiness_points <= 10
    end 
    def hygiene 
        @hygiene.clamp(0,10)
    end
    def happy?
        if @happiness > 7
            p true
        else p false
        end
    end
    def clean?
        if @hygiene > 7
            p true
        else p false
        end
    end
    def get_paid (salary)
        @bank_account += salary
        p "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3 
        self.happiness += 2
        p "♪ another one bites the dust ♫"
    end
    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
        # [self <=> person].each do |caller, callee|
        # "Hi #{caller.name}! It's #{callee.name}. How are you?"
        # end 
    end 
    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1 
            p 'blah blah sun blah rain'
        else 
            p 'blah blah blah blah blah'
        end 
    end
end 