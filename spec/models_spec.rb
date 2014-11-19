
describe Mop::Models do
  
  subject { Mop::Models }
  
  specify "is a singleton" do
    expect { subject.new }.to raise_error NoMethodError
  end
  
  it { should respond_to :find }
  it { should respond_to :select }
  it { should respond_to :all }
  
end
