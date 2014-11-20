
describe Mop::ERBContainer do
  
  subject { Mop::ERBContainer.new var_1: 'foo', var_2: 'bar' }
  
  let(:data)   { "This string contains <%= @var_1 %> and <%= @var_2 %>." }
  let(:result) { subject.process data }
  
  it "can process a string with injected instance variables" do
    result.should eq 'This string contains foo and bar.'
  end
  
end
