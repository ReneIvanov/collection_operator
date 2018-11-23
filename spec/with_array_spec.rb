RSpec.describe CollectionOperator::WithArray do
  describe " - #hashes_subset" do
    let(:array1){ [{a: 1, b: 2}, {monday: "first", tuesday: "second"}] }
    let(:array2){ [{monday: "first", tuesday: "second", wednesday: "third"}, {a: 1, b: 2, c: 3}] }
    let(:array3){ [{a: 1, b: 2}] }
    let(:array4){ [] }

    
    it " - should return true if hashes in first array are equals or subsets to hashes in second array." do
      expect(CollectionOperator::WithArray.hashes_subset(array1, array2)).to be true
    end

    it " - should return true if hashes in first array are not equals nor subsets to hashes in second array." do
      expect(CollectionOperator::WithArray.hashes_subset(array2, array1)).to be false
      expect(CollectionOperator::WithArray.hashes_subset(array3, array2)).to be false
      expect(CollectionOperator::WithArray.hashes_subset(array4, array2)).to be false
      expect(CollectionOperator::WithArray.hashes_subset(array2, array4)).to be false

      array1.first[:a] = 7
      expect(CollectionOperator::WithArray.hashes_subset(array1, array2)).to be false
    end
  end
end
