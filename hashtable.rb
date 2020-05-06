
class HashTable

    def initialize 
        @table = Array.new(9122, nil)
    end 

    def calculate_hash_value string
        value = string[0].ord * 100 + string[1].ord
        value
    end

    def store string 
        hash_value = calculate_hash_value(string) 
    
        if @table[hash_value] != nil
            @table[hash_value].append(string)
        else 
            @table[hash_value] = [string]
        end 
    end

    def lookup string
        hash_value = calculate_hash_value(string)

        if @table[hash_value] != nil
            if @table[hash_value].include?(string)
                return hash_value
            end 
        end 
        "String not found"
    end 
end 

    
person_list = HashTable.new # => #<HashTable:0x00007fcc378f15c8 @table=[nil, nil, nil, ...]

person_list.calculate_hash_value("Joe") # => 7511
person_list.calculate_hash_value("Jorge") # => 7511
person_list.calculate_hash_value("Bernard") # => 6701

person_list.store("Joe") # => ["Joe"]
person_list.store("Jorge") # => ["Joe", "Jorge"]
person_list.store("Clifford") # => ["Clifford"]

person_list.lookup("Joe") # => 7511
person_list.lookup("Jorge") # => 7511
person_list.lookup("Bernard") # => "String not found"




