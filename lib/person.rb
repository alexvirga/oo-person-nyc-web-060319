class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

      def initialize (name ="nil", bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
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

      def happiness
          @happiness
      end

      def hygiene=(hygiene)
          if hygiene >10
              @hygiene = 10
          elsif hygiene <0
              @hygiene = 0
          else
              @hygiene = hygiene
          end
      end

      def hygiene
          @hygiene
      end

      def happy?
          if happiness >7
              true
          else
              false
          end
      end

      def clean?
          if hygiene >7
              true
          else
              false
          end
      end

      def get_paid(salary)
          @bank_account += salary
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
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{name}. How are you?"
      end

      def start_conversation(person,topic)
        if topic == "politics"
          self.happiness -= 2
          person.happiness -= 2
          "blah blah partisan blah lobbyist"
        elsif topic == "weather"
          self.happiness += 1
          person.happiness += 1
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
      end

end # class end

alex = Person.new("Alex")
vicky = Person.new("Vicky",10)
william = Person.new("William", 10000, -123, 78)
