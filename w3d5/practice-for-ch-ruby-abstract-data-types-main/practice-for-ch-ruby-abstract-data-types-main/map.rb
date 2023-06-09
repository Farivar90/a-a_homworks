
class Map
    private
    
    def initialize
      @map = []
    end
  
    def set(key, value)
      pair_index = find_index(key)
      if pair_index
        @map[pair_index][1] = value
      else
        @map.push([key, value])
      end
    end
  
    def get(key)
      pair = @map.find { |k, _| k == key }
      pair.nil? ? nil : pair[1]
    end
  
    def delete(key)
      pair_index = find_index(key)
      @map.delete_at(pair_index) if pair_index
    end
  
    def show
      @map.each { |pair| puts "#{pair[0]} => #{pair[1]}" }
    end
  
    def find_index(key)
      @map.each_with_index { |pair, index| return index if pair[0] == key }
      nil
    end
end