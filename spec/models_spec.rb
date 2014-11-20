
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
    
    let(:name) { 'SanyoProjector' }
    let(:type) { 'class' }
    
    its(:all) { should include model }
    
    
    describe "find" do
      
      specify "by name" do
        subject.find(name: name).should eq model
      end
      
      specify "by type" do
        subject.find(type: type).should eq model
      end
      
      specify "by name and type (multiple params)" do
        subject.find(name: name, type: type).should eq model
      end
      
      
      describe "returns nil if not found" do
        
        specify do
          subject.find(name: 'does_not_exist').should eq nil
        end
        
        specify do
          subject.find(name: name, type: 'does_not_exist').should eq nil
        end
        
      end
      
    end
    
    
    describe "select" do
      
      specify "by name" do
        subject.select(name: name).should eq [model]
      end
      
      specify "by type" do
        subject.select(type: type).should eq [model]
      end
      
      specify "returns empty array if not found" do
        subject.select(name: 'does_not_exist').should eq []
      end
      
    end
    
  end
  
end
