# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :name
 # ******************************************************* #   
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
 # ******************************************************* #   
    def happiness=(happiness)
        if happiness < 0
            @happiness = 0
        elsif happiness > 10
            @happiness = 10
        else
            @happiness = happiness
        end
    end
     
    def  happiness
       @happiness
    end
 # ******************************************************* #    
    def hygiene=(hygiene)
        if hygiene < 0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else
            @hygiene = hygiene
        end
    end
    
    def hygiene
       @hygiene
    end
 # ******************************************************* #   
    def happy? 
        if @happiness > 7
            true
        else
            false
        end
    end
 # ******************************************************* #   
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end 
 # ******************************************************* #   
    def get_paid (amount)
        @bank_account += amount
        'all about the benjamins'
    end
 # ******************************************************* #   
    def take_bath
        #can't make a person cleaner by 10 points 
        #(hint: use the custom #hygiene= method)
        #calls on the #hygiene= method to increment hygiene
        self.hygiene = @hygiene + 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
 # ******************************************************* #   
    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        '♪ another one bites the dust ♫'
    end
 # ******************************************************* #   
    def call_friend (friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
 # ******************************************************* #   
    def start_conversation(person, topic)

        if topic == 'politics'
            self.happiness = @happiness - 2
            person.happiness = person.happiness - 2
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness = @happiness + 1
            person.happiness = person.happiness + 1
            'blah blah sun blah rain'
        else
            topic == 'other'
            'blah blah blah blah blah'
        end

    end
end