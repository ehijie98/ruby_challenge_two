class PasswordManager2

    # to store the hash inside an instance variable
    def initialize
        @hash = Hash.new
    end
    
    # This should create a new empty hash when PasswordManager is instantiated
    # password_manager = PasswordManager.new: 

    def all
        @hash
    end

    # add method that takes 2 strings as arg
    def add(service, password)
        if @hash.values.any?{|service| service["password"] == password}
            "ERROR: Passwords must be unique"
        elsif @hash.has_key?(service)
            "ERROR: Service names must be unique"
        else 
            @hash[service] = {'password' => password, 'added_on' => Time.now}
        end

    end 

    # These should add the following key, value pairs into the empty hash given that the password and service are both unique
    # password_manager = PasswordManager2.new
    # password_manager.add('Twitter', 'asdfgh4561)
    # password_manager.add('Facebook', 'qwerty123')
    # password_manager.add('Instagram', 'zxcvbn789')

    #remove method that takes 1 string as arg
    def remove(service)
        @hash.delete(service)
    end


    # This should list the services after one has been removed
    # password_manager.remove('Instagram') => ['Twitter', 'Facebook']

    # services method that takes zero arg
    def services
        # empty
        @hash.keys
    end

    # This should return an array of all services
    # password_manager.services => ['Facebook', 'Twitter', 'Instagram']

    # sort_by method that takes one arg
    def sort_by(arg)
        if arg == 'service'
            @hash.keys.sort
        elsif arg == 'added_on'
            @hash.sort_by{|key, value| value['added_on']}.to_h.keys
        end
    end
    
    # If arg == "service", this should list all services in alphabetical order => ['Facebook', 'Instagram', 'Twitter']
    # If arg == "added_on", this should list all services in chronological order ['Twitter', 'Facebook', 'Instagram']


    # password_for method that takes 1 string as arg
    def password_for(service)
        @hash[service]["password"]
    end

    # This should return the password for the chosen service
    # password_manager.password_for('Facebook') => 'qwerty123'
    # password_manager.password_for('Twitter') =>'asdfgh456'

    # update method that updates the password for the chosen service
    def update(service, password)
        if @hash.values.any?{|service| service["password"] == password}
            "ERROR: Password must be unique amongst all services"
        else 
            @hash[service] = {'password' => password, 'added_on' => Time.now}
        end
    end

    # password_manager.update('Twitter', 'hello123') => Should update password
    # password_manager.update('Twitter', 'qwerty123') => Should return ERROR message

end

password_manager = PasswordManager2.new
 p password_manager.add('Facebook', 'qwerty123')
 p password_manager.add('Twitter', 'asdfgh456')
 p password_manager.add('Instagram', 'zxcvbn123')
 p password_manager.all
 p password_manager.sort_by('service')
 p password_manager.sort_by('added_on')
 p password_manager.update('Twitter', 'qwerty123')
 p password_manager.password_for('Twitter')
 p password_manager.all
