require('rspec')
require('pry')
require('find_replace')

 sample = FRP.new('Hello World')

describe('#find_and_replace') do
  it("finds and changes one word for another") do
    expect(sample.find_and_replace("World", "Universe")).to(eq("Hello Universe"))
  end
end
