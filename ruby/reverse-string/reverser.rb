module Reverser
    def self.reverse(string)
        result = ""
        string.each_char do |char|
            result.prepend(char)
        end
        result
    end
end
