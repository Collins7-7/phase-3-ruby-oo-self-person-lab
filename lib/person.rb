# your code goes here
class Person
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(bank_account)
        @bank_account= bank_account
    end

    def bank_account
        @bank_account
    end

    def happiness=(happiness)
        @happiness = happiness
        if @happiness >10
            return @happiness = 10
        elsif @happiness <0
            return @happiness = 0
        else "nil"
        end
    end
    def happiness
        @happiness
    end

    def hygiene=(value)
        @hygiene = value
        if @hygiene > 10
            return @hygiene = 10
        elsif @hygiene < 0
            return @hygiene =0
        else "nil"
        end
    end

    def happy?
        if self.happiness > 7
            return true
        else false
        end
    end

    def clean?
        if self.hygiene > 7
            return true
        else false
        end
    end

    def hygiene
        @hygiene
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)

        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            'blah blah partisan blah lobbyist'

        elsif topic == "weather"
            
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"

        else "blah blah blah blah blah"
        end
    end
end

person = Person.new("Collo")
