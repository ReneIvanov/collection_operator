# CollectionOperator

This is gem, which has been created in order to learn how gems are created.
This gem provide some functionalities for work with collections, like arrays, hashes and so on. The functionality of this gem is gradually being added.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'collection_operator', git: 'https://github.com/ReneIvanov/collection_operator'

```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install collection_operator

## Usage

This gem provide some functionalities for work with collections, like arrays, hashes and so on. 

# Methods on arrays:

CollectionOperator::WithArray.hashes_subset(array1, array2)
Compare two arrays which consist from hashes. Hashes in first array has to be quals or subsets of hashes in second array.
Example:
```ruby
array1 = [{a: 1, b: 2}, {monday: "first", tuesday: "second"}]
array2 = [{monday: "first", tuesday: "second", wednesday: "third"}, {a: 1, b: 2, c: 3}]
array3 = []

CollectionOperator::WithArray.hashes_subset(array1, array2) #true
CollectionOperator::WithArray.hashes_subset(array2, array1) #false
CollectionOperator::WithArray.hashes_subset(array3, array1) #false
CollectionOperator::WithArray.hashes_subset(array1, array3) #false
```
