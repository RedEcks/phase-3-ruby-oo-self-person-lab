# your code goes here
class Person
    attr_reader :name, :happy
    attr_writer 
    attr_accessor :bank_account, :happiness, :hygiene, :get_paid, :take_bath, :work_out, :call_friend, :start_conversation

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def happy?

        happy = self.happiness

        if happy > 7
            true
        else
            false
        end
    end

    def clean?

        clean = self.hygiene

        if clean > 7
            true
        else
            false
        end
    end

    def get_paid (amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'

    end 

    def work_out
        self.hygiene -= 3
        self.happiness +=2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end 