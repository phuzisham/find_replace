require('rspec')
require('pry')
require('find_replace')

describe('#find_and_replace') do
  it("finds and changes one word for another") do
    sample = FRP.new('Hello World')
    expect(sample.find_and_replace("World", "Universe")).to(eq("Hello Universe"))
  end

  it("finds and replaces partial matches") do
    sample = FRP.new('I am walking my cat to the cathedral.')
    expect(sample.find_and_replace("cat", "dog")).to(eq("I am walking my dog to the doghedral."))
  end
end
