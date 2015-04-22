require('rspec')
require('scrabble')
require('pry')

describe('String#scrabble') do
  it("Adds the total value for the word") do
    expect("Hello".scrabble()).to(eq(8))
  end
end
