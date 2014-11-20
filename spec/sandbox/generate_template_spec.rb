
describe "sandbox: generate template" do
  
  let(:model) { Mop::Model.load_file 'spec/data_files/model_spec_data.yaml' }
  
  specify do
    # -------
    # Crawler
    
    model.constants ||= Mop::Model.new
    model.variables ||= Mop::Model.new
    model.functions ||= Mop::Model.new
    
    model.variables.map! do |name, m|
      m.is_a?(String) ? Mop::Model.new(type: m) : m
    end
    
    model.variables.map! do |name, m|
      if m.is_a?(Array)
        model.constants[name] = m
        Mop::Model.new(type: 'integer')
      else
        m
      end
    end
    
    puts "\n\n"
    p model
    
    # End Crawler
    # -----------
    
    
    template_string = File.open('spec/sandbox/template.axi.erb').read
    erb_string = Mop::ERBContainer.new(model: model).process template_string
    puts erb_string
    # binding.pry
  end
  
end
