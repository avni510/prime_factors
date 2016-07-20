require "prime_factors"

describe PrimeFactors do
  
  [
    ['1', []],
    ['2', [2]], 
    ['3', [3]], 
    ['4', [2, 2]],
    ['5', [5]], 
    ['6', [2, 3]], 
    ['7', [7]], 
    ['8', [2] * 3], 
    ['9', [3, 3]],
    ['2*3*5*7*11*13', [2, 3, 5, 7, 11, 13]], 
    ['8191 * 131071', [8191, 131071]], 
    ['2**100', [2] * 100],
    ['2**19-1', [2**19-1]], 
    ['2**31-1', [2**31-1]]
  ].each do |expression, factors|
    it "returns the prime factors of #{expression}" do 
      num = eval expression
      expect(PrimeFactors.of(num)).to eq(factors)
    end

  end




end