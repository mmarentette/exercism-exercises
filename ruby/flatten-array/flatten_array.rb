module FlattenArray
  def self.flatten(array)
    result = []
    array.reject(&:nil?).each do |e| 
      result += e.is_a?(Array) ? flatten(e) : [e]
    end
    result
  end
end