class PasswordManager

    # to store the hash inside an instance variable
    def initialize
        @hash = Hash.new
    end
    
    # This should create a new empty hash when PasswordManager is instantiated
    # password_manager = PasswordManager.new: 

    # add method that takes 2 strings as arg
    def add(service, password)
        if password.length > 7 && password.match(/[!@£$%^&*()"':;]/)
            @hash[service] = password
        end
    end

    # These should add the following key, value pairs into the empty hash
    # password_manager.add("Twitter", "qwerty123")
    # password_manager.add("Facebook", "asdfgh456")


    # password_for method that takes 1 string as arg
    def password_for(service)
        @hash[service]
    end

    # These should retrieve the respective value objects for the key strings
    # password_manager.password_for("Facebook") => "qwerty123"
    # password_manager.password_for("Twitter") => "asdfgh456"


    # services method that takes zero arg
    def services
        @hash.keys
    end

    # This should show me an array of all keys
    # password.services => ["Facebook", "Twitter"]
end
