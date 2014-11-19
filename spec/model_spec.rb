
describe Mop::Model do
  
  describe "singleton" do
    
    subject { Mop::Model }
    
    it { should respond_to :load_file }
    
    it "can load a model file" do
      subject.load_file('spec/data_files/model_spec_data.yaml').tap do |o|
        o.should be_a Mop::Model
        o.type.should eq 'class'
        o.name.should eq 'SanyoProjector'
        o.functions.power_on.description.should eq 'Turn on the projector.'
      end
    end
    
  end
  
end
