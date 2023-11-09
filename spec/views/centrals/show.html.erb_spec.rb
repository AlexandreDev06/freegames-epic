RSpec.describe 'centrals/show' do
  before do
    assign(:central, Central.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
