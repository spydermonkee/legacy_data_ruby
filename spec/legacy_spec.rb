require('rspec')
require('legacy')

describe('legacy_mod') do
  it('takes a hash with arrays as values, and assigns each array element with a key equal to the original key of the array') do
    test_hash = { 1 => ["A", "E"]}
    legacy_mod(test_hash).should(eq({ "a" => 1, "e" => 1}))
  end
  it('sorts the new hash alphabetiacally by keys') do
    legacy_hash = { 1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
      2  => ["D", "G"],
      3  => ["B", "C", "M", "P"],
      4  => ["F", "H", "V", "W", "Y"],
      5  => ["K"],
      8  => ["J", "X"],
      10 => ["Q", "Z"]
    }
    legacy_mod(legacy_hash).keys[1].should(eq("b"))

  end  
end

