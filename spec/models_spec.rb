
describe Mop::Models do
  
  subject { Mop::Models }
  
  specify "is a singleton" do
    expect { subject.new }.to raise_error NoMethodError
  end
  
  it { should respond_to :add }
  it { should respond_to :<< }
  it { should respond_to :remove }
  
  it { should respond_to :[] }
  it { should respond_to :find }
  it { should respond_to :select }
  it { should respond_to :all }
  
  let(:model) { Mop::Model.load_file 'spec/data_files/model_spec_data.yaml' }
  
  specify "add, retrieve, remove model" do
    subject.all.should_not include model
    subject.add model
    subject.all.should include model
    subject.remove model
    subject.all.should_not include model
  end
  
  describe "with data:" do
    subject { Mop::Models.tap { |m| m << model } }
    
    its(:all) { should include model }
  end
  
end
