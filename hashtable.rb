class HashTable
    def initialize 
        @table = Array.new(10000, nil)
    end 
    
    def store string 
        hv = calculate_hash_value(string) 
    
        if @table[hv] != nil
            @table[hv].append(string)
        else 
            @table[hv] = [string]
        end 
    end
    
    def lookup string
        hv = calculate_hash_value(string)

        if @table[hv] != nil
            if @table[hv].include?(string)
                return hv
            end 
        end 
        "String not found"
    end 

    def calculate_hash_value string
        value = string[0].ord * 100 + string[1].ord
        value
    end
end 

test = HashTable.new 

p "1. #{test.calculate_hash_value("Joe")}"
p test.store("Joe")
p test.store("John")
p "3. #{test.lookup("Joe")}"
p "4. #{test.lookup("John")}"