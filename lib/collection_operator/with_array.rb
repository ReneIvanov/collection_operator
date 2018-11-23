module CollectionOperator
  class WithArray
    #compare two arrays which consist from hashes. Hashes in first array has to be subsets of hashes in second array.
    def self.hashes_subset(first_array, second_array)
      result = true
      result = false if (first_array.count != second_array.count)
  
      first_array.each do |first|
        i = false
        second_array.each do |second|
          i = true if first <= second
        end 
        result = false if i==false 
      end
  
      return result 
    end
  end 
end
