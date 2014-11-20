
describe "sandbox: generate template" do
  
  let(:model) { Mop::Model.load_file 'spec/data_files/model_spec_data.yaml' }
  
  specify do
    template_string = File.open('spec/sandbox/template.axi.erb').read
    erb_string = Mop::ERBContainer.new(model: model).process template_string
    puts erb_string
    # binding.pry
  end
  
end
